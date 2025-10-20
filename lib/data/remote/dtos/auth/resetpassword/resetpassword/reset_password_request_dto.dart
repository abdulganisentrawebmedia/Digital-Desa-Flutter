class ResetPasswordRequestDto {
  // final String kodeLisensi;
  final String email;
  final String otp;
  final String password;

  ResetPasswordRequestDto({
    // required this.kodeLisensi,
    required this.email,
    required this.otp,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
    // 'kode_lisensi': kodeLisensi,
    'email': email,
    'otp': otp,
    'password': password,
  };
}
