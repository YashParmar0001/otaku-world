import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'search_anime_state.dart';

class SearchMediaCubit extends Cubit<SearchAnimeState> {
  SearchMediaCubit() : super(SearchAnimeInitial());

  final searchController = TextEditingController();
  bool searchApplied = false;
}
