class FcmTokenResponseDto {
  final String message;
  final bool? success;
  final String? status;

  FcmTokenResponseDto({
    required this.message,
    this.success,
    this.status,
  });

  factory FcmTokenResponseDto.fromJson(Map<String, dynamic> json) {
    return FcmTokenResponseDto(
      message: json['message'],
      success: json['success'],
      status: json['status'],
    );
  }
}