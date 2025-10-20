sealed class RequestOtpResult {
  const RequestOtpResult();
}

class RequestOtpSuccess extends RequestOtpResult {
  const RequestOtpSuccess();
}

class RequestOtpError extends RequestOtpResult {
  final String message;

  const RequestOtpError({required this.message});
}