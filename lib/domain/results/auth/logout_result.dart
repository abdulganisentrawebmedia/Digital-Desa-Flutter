sealed class LogoutResult {
  const LogoutResult();
}

class LogoutSuccess extends LogoutResult {
  const LogoutSuccess();
}

class LogoutError extends LogoutResult {
  final String message;

  const LogoutError({required this.message});
}