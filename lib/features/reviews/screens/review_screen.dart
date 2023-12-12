import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as dev;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/reviews/review_bloc.dart';
import 'package:otaku_world/core/ui/simple_app_bar.dart';
import 'package:otaku_world/core/ui/simple_sliver_app_bar.dart';
import 'package:otaku_world/features/reviews/widgets/review_card.dart';

class ReviewScreen<B extends PaginatedDataBloc> extends HookWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final reviewsScrollController = useScrollController();

    useEffect(() {
      reviewsScrollController.addListener(() {
        final maxScroll = reviewsScrollController.position.maxScrollExtent;
        final currentScroll = reviewsScrollController.position.pixels;

        if (currentScroll == maxScroll) {
          dev.log('Max scrolled', name: 'Reviews Screen');

          final reviewBloc = context.read<ReviewBloc>();

          final hasNextPage =
              (reviewBloc.state as PaginatedDataLoaded).hasNextPage;
          if (hasNextPage) {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            reviewBloc.add(LoadData(client));
          }
        }
      });
      return null;
    });

    return SafeArea(
      child: Scaffold(
        // appBar: const SimpleAppBar(title: 'Review Screen'),
        body: RefreshIndicator(
          onRefresh: () async {},
          child: BlocBuilder<ReviewBloc, PaginatedDataState>(
              builder: (context, state) {
            if (state is PaginatedDataLoading) {
              // if (state is ReviewsLoading || state is ReviewInitial) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (state is PaginatedDataLoaded) {
              return CustomScrollView(
                scrollDirection: Axis.vertical,
                clipBehavior: Clip.none,
                controller: reviewsScrollController,
                slivers: [
                  const SimpleSliverAppBar(
                    title: 'Review Screen',
                  ),
                  SliverSafeArea(
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return ReviewCard(reviews: state.list[index]!);
                        },
                        childCount: state.list.length,
                      ),
                    ),
                  ),
                  if (state.hasNextPage)
                    const SliverToBoxAdapter(
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ),
                ],
              );
            }
            return const Text('Unknown State');
          }),
        ),
      ),
    );
  }
}
