import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/text_field/clear_text_cubit.dart';
import 'package:otaku_world/features/search/widgets/anime_list.dart';
import 'package:otaku_world/features/search/widgets/characters_list.dart';
import 'package:otaku_world/features/search/widgets/manga_list.dart';
import 'package:otaku_world/features/search/widgets/search_app_bar.dart';
import 'package:otaku_world/features/search/widgets/staff_list.dart';
import 'package:otaku_world/features/search/widgets/studios_list.dart';
import 'package:otaku_world/features/search/widgets/users_list.dart';

import '../../../bloc/search/search_anime/search_anime_bloc.dart';
import '../../../bloc/search/search_base/search_bloc.dart';
import '../../../bloc/search/search_characters/search_characters_bloc.dart';
import '../../../bloc/search/search_manga/search_manga_bloc.dart';
import '../../../bloc/search/search_staff/search_staff_bloc.dart';
import '../../../bloc/search/search_studios/search_studios_bloc.dart';
import '../../../bloc/search/search_users/search_users_bloc.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const tabs = ['Anime', 'Manga', 'Characters', 'Staff', 'Studios', 'Users'];
    final tabController = useTabController(initialLength: tabs.length);

    return PopScope(
      canPop: false,
      onPopInvoked: (_) {
        _clearSearch(context);
        context.pop();
      },
      child: Scaffold(
        appBar: SearchAppBar(controller: tabController, tabs: tabs,),
        body: TabBarView(
          controller: tabController,
          children: const [
            ResultAnimeList(),
            ResultMangaList(),
            ResultCharactersList(),
            ResultStaffList(),
            ResultStudiosList(),
            ResultUsersList(),
          ],
        ),
      ),
    );
  }

  void _clearSearch(BuildContext context) {
    context.read<ClearTextCubit>().hideClearText();
    context.read<SearchAnimeBloc>().add(ClearSearch());
    context.read<SearchMangaBloc>().add(ClearSearch());
    context.read<SearchCharactersBloc>().add(ClearSearch());
    context.read<SearchStaffBloc>().add(ClearSearch());
    context.read<SearchStudiosBloc>().add(ClearSearch());
    context.read<SearchUsersBloc>().add(ClearSearch());
  }
}
