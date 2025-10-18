class RequestOtpResponseDto {
  final String message;

  RequestOtpResponseDto({required this.message});

  factory RequestOtpResponseDto.fromJson(Map<String, dynamic> json) {
    return RequestOtpResponseDto(message: json['message']);
  }
}