class JenisUsahaResponseDto {
  final List<JenisUsahaDataDto> data;

  JenisUsahaResponseDto({required this.data});

  factory JenisUsahaResponseDto.fromJson(Map<String, dynamic> json) {
    return JenisUsahaResponseDto(
      data: (json['data'] as List)
          .map((item) => JenisUsahaDataDto.fromJson(item))
          .toList(),
    );
  }
}

class JenisUsahaDataDto {
  final String id;
  final String nama;

  JenisUsahaDataDto({
    required this.id,
    required this.nama,
  });

  factory JenisUsahaDataDto.fromJson(Map<String, dynamic> json) {
    return JenisUsahaDataDto(
      id: json['id'],
      nama: json['nama'],
    );
  }
}
