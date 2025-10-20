sealed class ResetPasswordResult {
  const ResetPasswordResult();
}

class ResetPasswordSuccess extends ResetPasswordResult {
  const ResetPasswordSuccess();
}

class ResetPasswordError extends ResetPasswordResult {
  final String message;

  const ResetPasswordError({required this.message});
}