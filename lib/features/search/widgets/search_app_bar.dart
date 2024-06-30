import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/search/search_base/search_base_bloc.dart';
import 'package:otaku_world/bloc/search/search_characters/search_characters_bloc.dart';
import 'package:otaku_world/bloc/search/search_manga/search_manga_bloc.dart';
import 'package:otaku_world/bloc/search/search_staff/search_staff_bloc.dart';
import 'package:otaku_world/bloc/search/search_studios/search_studios_bloc.dart';
import 'package:otaku_world/bloc/search/search_users/search_users_bloc.dart';
import 'package:otaku_world/bloc/text_field/clear_text_cubit.dart';
import 'package:otaku_world/core/ui/tabs/custom_tab_bar.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../bloc/search/search_anime/search_anime_bloc.dart';
import '../../../core/ui/buttons/back_button.dart';

class SearchAppBar extends HookWidget implements PreferredSizeWidget {
  const SearchAppBar({
    super.key,
    required this.controller,
    required this.tabs,
  });

  final TabController controller;
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();

    return Hero(
      tag: 'search_app_bar',
      child: AppBar(
        leading: CustomBackButton(
          onPressed: () {
            _clearSearch(context);
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/home');
            }
          },
        ),
        leadingWidth: 45,
        title: SizedBox(
          height: 50,
          child: TextField(
            controller: searchController,
            style: Theme.of(context).textTheme.headlineMedium,
            textCapitalization: TextCapitalization.words,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            autofocus: true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: AppColors.sunsetOrange.withOpacity(0.3),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: AppColors.sunsetOrange,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: SvgPicture.asset(
                  Assets.iconsSearchSmall,
                  fit: BoxFit.cover,
                ),
              ),
              prefixIconConstraints: const BoxConstraints(
                minWidth: 20,
                minHeight: 20,
                maxWidth: 50,
                maxHeight: 50,
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 10,
                ),
                child: BlocBuilder<ClearTextCubit, ClearTextState>(
                  builder: (context, state) {
                    if (state is ClearTextVisible) {
                      return InkWell(
                        onTap: () {
                          searchController.clear();
                          context.read<ClearTextCubit>().hideClearText();
                          _clearSearch(context);
                        },
                        borderRadius: BorderRadius.circular(15),
                        child: SvgPicture.asset(
                          Assets.iconsClose,
                          fit: BoxFit.cover,
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
              suffixIconConstraints: const BoxConstraints(
                minWidth: 25,
                minHeight: 25,
                maxWidth: 50,
                maxHeight: 50,
              ),
            ),
            cursorColor: AppColors.sunsetOrange,
            onChanged: (value) {
              if (value.isEmpty || value == '') {
                context.read<ClearTextCubit>().hideClearText();
              } else {
                context.read<ClearTextCubit>().showClearText();
              }
            },
            onSubmitted: (value) {
              dev.log('Searching for $value', name: 'Search');
              final client = (context.read<GraphqlClientCubit>().state
                      as GraphqlClientInitialized)
                  .client;

              context.read<SearchAnimeBloc>().add(SearchMedia(
                    client: client,
                    searchContent: value,
                  ));
              context.read<SearchMangaBloc>().add(SearchMedia(
                    client: client,
                    searchContent: value,
                  ));
              context.read<SearchCharactersBloc>().add(SearchMedia(
                    client: client,
                    searchContent: value,
                  ));
              context.read<SearchStaffBloc>().add(SearchMedia(
                    client: client,
                    searchContent: value,
                  ));
              context.read<SearchStudiosBloc>().add(SearchMedia(
                    client: client,
                    searchContent: value,
                  ));
              context.read<SearchUsersBloc>().add(SearchMedia(
                    client: client,
                    searchContent: value,
                  ));
            },
          ),
        ),
        bottom: CustomTabBar(
          controller: controller,
          tabs: tabs,
        ),
        backgroundColor: AppColors.raisinBlack,
        elevation: 0,
      ),
    );
  }

  void _clearSearch(BuildContext context) {
    context.read<SearchAnimeBloc>().add(ClearSearch());
    context.read<SearchMangaBloc>().add(ClearSearch());
    context.read<SearchCharactersBloc>().add(ClearSearch());
    context.read<SearchStaffBloc>().add(ClearSearch());
    context.read<SearchStudiosBloc>().add(ClearSearch());
    context.read<SearchUsersBloc>().add(ClearSearch());
  }

  @override
  Size get preferredSize => const Size.fromHeight(110);
}
