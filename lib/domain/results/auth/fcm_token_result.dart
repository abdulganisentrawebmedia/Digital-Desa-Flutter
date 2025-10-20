sealed class FcmTokenResult {
  const FcmTokenResult();
}

class FcmTokenSuccess extends FcmTokenResult {
  const FcmTokenSuccess();
}

class FcmTokenError extends FcmTokenResult {
  final String message;

  const FcmTokenError({required this.message});
}