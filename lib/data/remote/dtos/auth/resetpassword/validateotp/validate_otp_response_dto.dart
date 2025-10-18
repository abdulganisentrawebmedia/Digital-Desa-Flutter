class ValidateOtpResponseDto {
  final OtpValidationDataDto data;

  ValidateOtpResponseDto({required this.data});

  factory ValidateOtpResponseDto.fromJson(Map<String, dynamic> json) {
    return ValidateOtpResponseDto(
      data: OtpValidationDataDto.fromJson(json['data']),
    );
  }
}

class OtpValidationDataDto {
  final bool valid;

  OtpValidationDataDto({required this.valid});

  factory OtpValidationDataDto.fromJson(Map<String, dynamic> json) {
    return OtpValidationDataDto(valid: json['valid']);
  }
}