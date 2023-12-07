import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> authenticate() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final token = sharedPreferences.getString('access_token');
    if (token == null) {
      emit(UnAuthenticated());
    } else {
      emit(Authenticated(token));
    }
  }

  @override
  void onChange(Change<AuthState> change) {
    dev.log(change.toString(), name: 'AuthCubit');
    super.onChange(change);
  }
}
