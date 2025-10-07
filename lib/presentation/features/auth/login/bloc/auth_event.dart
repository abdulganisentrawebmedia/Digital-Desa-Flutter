part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginRequested extends AuthEvent {
  final String email;
  final String password;
  final String kodeLisensi;

  const LoginRequested({
    required this.email,
    required this.password,
    required this.kodeLisensi,
  });

  @override
  List<Object> get props => [email, password, kodeLisensi];
}

class LogoutRequested extends AuthEvent {}