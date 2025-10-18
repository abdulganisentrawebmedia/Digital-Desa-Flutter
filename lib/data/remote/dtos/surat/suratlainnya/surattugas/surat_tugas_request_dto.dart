class SuratTugasPenerimaDto {
  final String jabatan;
  final String nama;
  final String nik;

  SuratTugasPenerimaDto({
    required this.jabatan,
    required this.nama,
    required this.nik,
  });

  Map<String, dynamic> toJson() => {
    'jabatan': jabatan,
    'nama': nama,
    'nik': nik,
  };

  factory SuratTugasPenerimaDto.fromJson(Map<String, dynamic> json) {
    return SuratTugasPenerimaDto(
      jabatan: json['jabatan'],
      nama: json['nama'],
      nik: json['nik'],
    );
  }
}

class SuratTugasRequestDto {
  final String deskripsi;
  final String disahkanOleh;
  final String ditugaskanUntuk;
  final List<SuratTugasPenerimaDto> penerima;

  SuratTugasRequestDto({
    required this.deskripsi,
    required this.disahkanOleh,
    required this.ditugaskanUntuk,
    required this.penerima,
  });

  Map<String, dynamic> toJson() => {
    'deskripsi': deskripsi,
    'disahkan_oleh': disahkanOleh,
    'ditugaskan_untuk': ditugaskanUntuk,
    'penerima': penerima.map((e) => e.toJson()).toList(),
  };
}