class ValidateOtpRequestDto {
  final String kodeLisensi;
  final String email;
  final String otp;

  ValidateOtpRequestDto({
    required this.kodeLisensi,
    required this.email,
    required this.otp,
  });

  Map<String, dynamic> toJson() => {
    'kode_lisensi': kodeLisensi,
    'email': email,
    'otp': otp,
  };
}