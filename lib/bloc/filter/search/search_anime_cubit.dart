import 'package:bloc/bloc.dart';

part 'search_anime_state.dart';

class SearchAnimeCubit extends Cubit<SearchAnimeState> {
  SearchAnimeCubit() : super(SearchAnimeInitial());

  String search = '';
  bool searchApplied = false;
}
