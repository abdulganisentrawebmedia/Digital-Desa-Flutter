class RequestOtpRequestDto {
  final String kodeLisensi;
  final String email;

  RequestOtpRequestDto({
    required this.kodeLisensi,
    required this.email,
  });

  Map<String, dynamic> toJson() => {
    'kode_lisensi': kodeLisensi,
    'email': email,
  };
}
