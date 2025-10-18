class ResetPasswordResponseDto {
  final String message;

  ResetPasswordResponseDto({required this.message});

  factory ResetPasswordResponseDto.fromJson(Map<String, dynamic> json) {
    return ResetPasswordResponseDto(message: json['message']);
  }
}