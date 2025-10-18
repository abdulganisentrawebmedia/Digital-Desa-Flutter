class SuratTugasResponseDto {
  final SuratTugasDataDto data;

  SuratTugasResponseDto({required this.data});

  factory SuratTugasResponseDto.fromJson(Map<String, dynamic> json) {
    return SuratTugasResponseDto(
      data: SuratTugasDataDto.fromJson(json['data']),
    );
  }
}

class SuratTugasResponsePenerimaDto {
  final String jabatan;
  final String nama;
  final String nik;

  SuratTugasResponsePenerimaDto({
    required this.jabatan,
    required this.nama,
    required this.nik,
  });

  factory SuratTugasResponsePenerimaDto.fromJson(Map<String, dynamic> json) {
    return SuratTugasResponsePenerimaDto(
      jabatan: json['jabatan'],
      nama: json['nama'],
      nik: json['nik'],
    );
  }
}

class SuratTugasDataDto {
  final String createdAt;
  final String? deletedAt;
  final String deskripsi;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String ditugaskanUntuk;
  final String id;
  final String nama;
  final String nik;
  final String nomorSurat;
  final String organisasiId;
  final List<SuratTugasResponsePenerimaDto> penerima;
  final String status;
  final String updatedAt;

  SuratTugasDataDto({
    required this.createdAt,
    this.deletedAt,
    required this.deskripsi,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.ditugaskanUntuk,
    required this.id,
    required this.nama,
    required this.nik,
    required this.nomorSurat,
    required this.organisasiId,
    required this.penerima,
    required this.status,
    required this.updatedAt,
  });

  factory SuratTugasDataDto.fromJson(Map<String, dynamic> json) {
    return SuratTugasDataDto(
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      deskripsi: json['deskripsi'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      ditugaskanUntuk: json['ditugaskan_untuk'],
      id: json['id'],
      nama: json['nama'],
      nik: json['nik'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      penerima: (json['penerima'] as List)
          .map((e) => SuratTugasResponsePenerimaDto.fromJson(e))
          .toList(),
      status: json['status'],
      updatedAt: json['updated_at'],
    );
  }
}
