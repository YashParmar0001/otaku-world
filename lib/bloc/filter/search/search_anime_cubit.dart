import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'search_anime_state.dart';

class SearchAnimeCubit extends Cubit<SearchAnimeState> {
  SearchAnimeCubit() : super(SearchAnimeInitial());

  final searchController = TextEditingController();
  bool searchApplied = false;
}
