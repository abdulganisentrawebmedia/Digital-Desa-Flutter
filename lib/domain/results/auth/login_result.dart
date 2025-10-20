import '../../entities/user_entity.dart';

sealed class LoginResult {
  const LoginResult();
}

class LoginSuccess extends LoginResult {
  final String token;
  final UserEntity user;

  const LoginSuccess({required this.token, required this.user});
}

class LoginError extends LoginResult {
  final String message;

  const LoginError({required this.message});
}