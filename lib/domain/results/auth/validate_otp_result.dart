sealed class ValidateOtpResult {
  const ValidateOtpResult();
}

class ValidateOtpSuccess extends ValidateOtpResult {
  final bool isValid;

  const ValidateOtpSuccess({required this.isValid});
}

class ValidateOtpError extends ValidateOtpResult {
  final String message;

  const ValidateOtpError({required this.message});
}