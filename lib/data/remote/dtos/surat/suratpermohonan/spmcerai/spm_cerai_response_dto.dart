class SPMCeraiResponseDto {
  final SPMCeraiDataDto data;

  SPMCeraiResponseDto({required this.data});

  factory SPMCeraiResponseDto.fromJson(Map<String, dynamic> json) {
    return SPMCeraiResponseDto(
      data: SPMCeraiDataDto.fromJson(json['data']),
    );
  }
}

class SPMCeraiDataDto {
  final String agamaIdIstri;
  final String agamaIdSuami;
  final String alamatIstri;
  final String alamatSuami;
  final String bagianSuratId;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final bool isWargaDesa;
  final String keperluan;
  final String kodeBelakang;
  final String kodeDepan;
  final String namaIstri;
  final String namaSuami;
  final String nikIstri;
  final String nikSuami;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaanIstri;
  final String pekerjaanSuami;
  final String sebabCerai;
  final String status;
  final String tanggalLahirIstri;
  final String tanggalLahirSuami;
  final String tanggalSurat;
  final String tempatLahirIstri;
  final String tempatLahirSuami;
  final String updatedAt;

  SPMCeraiDataDto({
    required this.agamaIdIstri,
    required this.agamaIdSuami,
    required this.alamatIstri,
    required this.alamatSuami,
    required this.bagianSuratId,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.isWargaDesa,
    required this.keperluan,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.namaIstri,
    required this.namaSuami,
    required this.nikIstri,
    required this.nikSuami,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaanIstri,
    required this.pekerjaanSuami,
    required this.sebabCerai,
    required this.status,
    required this.tanggalLahirIstri,
    required this.tanggalLahirSuami,
    required this.tanggalSurat,
    required this.tempatLahirIstri,
    required this.tempatLahirSuami,
    required this.updatedAt,
  });

  factory SPMCeraiDataDto.fromJson(Map<String, dynamic> json) {
    return SPMCeraiDataDto(
      agamaIdIstri: json['agama_id_istri'],
      agamaIdSuami: json['agama_id_suami'],
      alamatIstri: json['alamat_istri'],
      alamatSuami: json['alamat_suami'],
      bagianSuratId: json['bagian_surat_id'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      isWargaDesa: json['is_warga_desa'],
      keperluan: json['keperluan'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      namaIstri: json['nama_istri'],
      namaSuami: json['nama_suami'],
      nikIstri: json['nik_istri'],
      nikSuami: json['nik_suami'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaanIstri: json['pekerjaan_istri'],
      pekerjaanSuami: json['pekerjaan_suami'],
      sebabCerai: json['sebab_cerai'],
      status: json['status'],
      tanggalLahirIstri: json['tanggal_lahir_istri'],
      tanggalLahirSuami: json['tanggal_lahir_suami'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahirIstri: json['tempat_lahir_istri'],
      tempatLahirSuami: json['tempat_lahir_suami'],
      updatedAt: json['updated_at'],
    );
  }
}