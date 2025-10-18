class SKLahirMatiResponseDto {
  final SKLahirMatiDataDto data;

  SKLahirMatiResponseDto({required this.data});

  factory SKLahirMatiResponseDto.fromJson(Map<String, dynamic> json) {
    return SKLahirMatiResponseDto(
      data: SKLahirMatiDataDto.fromJson(json['data']),
    );
  }
}

class SKLahirMatiDataDto {
  final String agamaIbuId;
  final String alamat;
  final String alamatIbu;
  final String bagianSuratId;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String hubunganId;
  final String id;
  final bool isWargaDesa;
  final String keperluan;
  final String kewarganegaraanIbuId;
  final String kodeBelakang;
  final String kodeDepan;
  final String lamaDikandung;
  final String nama;
  final String namaIbu;
  final String nik;
  final String nikIbu;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaanIbu;
  final String status;
  final String? tanggalLahir;
  final String tanggalLahirIbu;
  final String tanggalMeninggal;
  final String tanggalSurat;
  final String tempatLahir;
  final String tempatLahirIbu;
  final String tempatMeninggal;
  final String updatedAt;

  SKLahirMatiDataDto({
    required this.agamaIbuId,
    required this.alamat,
    required this.alamatIbu,
    required this.bagianSuratId,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.hubunganId,
    required this.id,
    required this.isWargaDesa,
    required this.keperluan,
    required this.kewarganegaraanIbuId,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.lamaDikandung,
    required this.nama,
    required this.namaIbu,
    required this.nik,
    required this.nikIbu,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaanIbu,
    required this.status,
    this.tanggalLahir,
    required this.tanggalLahirIbu,
    required this.tanggalMeninggal,
    required this.tanggalSurat,
    required this.tempatLahir,
    required this.tempatLahirIbu,
    required this.tempatMeninggal,
    required this.updatedAt,
  });

  factory SKLahirMatiDataDto.fromJson(Map<String, dynamic> json) {
    return SKLahirMatiDataDto(
      agamaIbuId: json['agama_ibu_id'],
      alamat: json['alamat'],
      alamatIbu: json['alamat_ibu'],
      bagianSuratId: json['bagian_surat_id'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      hubunganId: json['hubungan_id'],
      id: json['id'],
      isWargaDesa: json['is_warga_desa'],
      keperluan: json['keperluan'],
      kewarganegaraanIbuId: json['kewarganegaraan_ibu_id'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      lamaDikandung: json['lama_dikandung'],
      nama: json['nama'],
      namaIbu: json['nama_ibu'],
      nik: json['nik'],
      nikIbu: json['nik_ibu'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaanIbu: json['pekerjaan_ibu'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalLahirIbu: json['tanggal_lahir_ibu'],
      tanggalMeninggal: json['tanggal_meninggal'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir: json['tempat_lahir'],
      tempatLahirIbu: json['tempat_lahir_ibu'],
      tempatMeninggal: json['tempat_meninggal'],
      updatedAt: json['updated_at'],
    );
  }
}
