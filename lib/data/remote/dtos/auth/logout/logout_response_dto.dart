class LogoutResponseDto {
  final String data;

  LogoutResponseDto({required this.data});

  factory LogoutResponseDto.fromJson(Map<String, dynamic> json) {
    return LogoutResponseDto(data: json['data']);
  }
}
