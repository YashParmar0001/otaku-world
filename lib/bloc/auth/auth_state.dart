part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class Authenticated extends AuthState {
  Authenticated(this.token);

  final String token;
}

class UnAuthenticated extends AuthState {}
