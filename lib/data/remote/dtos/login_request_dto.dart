class LoginRequestDto {
  final String email;
  final String password;
  final String kodeLisensi;

  LoginRequestDto({
    required this.email,
    required this.password,
    required this.kodeLisensi,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'kode_lisensi': kodeLisensi,
    };
  }
}