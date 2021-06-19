part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthCheck extends AuthState {
  final bool isAuth;
  AuthCheck({@required this.isAuth});
}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final User user;

  AuthSuccess({
    @required this.user,
  });
}

class AuthFailed extends AuthState {}
