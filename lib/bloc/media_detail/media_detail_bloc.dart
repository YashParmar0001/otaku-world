import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/media_detail.graphql.dart';

import '../../graphql/__generated/graphql/fragments.graphql.dart';

part 'media_detail_event.dart';

part 'media_detail_state.dart';

class MediaDetailBloc extends Bloc<MediaDetailEvent, MediaDetailState> {
  MediaDetailBloc() : super(MediaDetailInitial()) {
    on<LoadMediaDetail>(_onLoadMediaDetail);
  }

  FutureOr<void> _onLoadMediaDetail(
    LoadMediaDetail event,
    Emitter<MediaDetailState> emit,
  ) async {
    emit(MediaDetailLoading());
    final response = await event.client.query$GetMediaDetail(
      Options$Query$GetMediaDetail(
        variables: Variables$Query$GetMediaDetail(id: event.id),
      ),
    );

    if (response.hasException) {
      emit(MediaDetailError(response.exception.toString()));
    } else {
      emit(MediaDetailLoaded(media: response.parsedData!.Media!));
    }
  }
}
