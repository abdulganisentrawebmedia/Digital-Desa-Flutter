class SPMAktaLahirResponseDto {
  final SPMAktaLahirDataDto data;

  SPMAktaLahirResponseDto({required this.data});

  factory SPMAktaLahirResponseDto.fromJson(Map<String, dynamic> json) {
    return SPMAktaLahirResponseDto(
      data: SPMAktaLahirDataDto.fromJson(json['data']),
    );
  }
}

class SPMAktaLahirDataDto {
  final String alamat;
  final String alamatAnak;
  final String alamatOrangTua;
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
  final String nama;
  final String namaAnak;
  final String namaAyah;
  final String namaIbu;
  final String nik;
  final String nikAyah;
  final String nikIbu;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaan;
  final String status;
  final String tanggalLahir;
  final String tanggalLahirAnak;
  final String tanggalSurat;
  final String tempatLahir;
  final String tempatLahirAnak;
  final String updatedAt;

  SPMAktaLahirDataDto({
    required this.alamat,
    required this.alamatAnak,
    required this.alamatOrangTua,
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
    required this.nama,
    required this.namaAnak,
    required this.namaAyah,
    required this.namaIbu,
    required this.nik,
    required this.nikAyah,
    required this.nikIbu,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaan,
    required this.status,
    required this.tanggalLahir,
    required this.tanggalLahirAnak,
    required this.tanggalSurat,
    required this.tempatLahir,
    required this.tempatLahirAnak,
    required this.updatedAt,
  });

  factory SPMAktaLahirDataDto.fromJson(Map<String, dynamic> json) {
    return SPMAktaLahirDataDto(
      alamat: json['alamat'],
      alamatAnak: json['alamat_anak'],
      alamatOrangTua: json['alamat_orang_tua'],
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
      nama: json['nama'],
      namaAnak: json['nama_anak'],
      namaAyah: json['nama_ayah'],
      namaIbu: json['nama_ibu'],
      nik: json['nik'],
      nikAyah: json['nik_ayah'],
      nikIbu: json['nik_ibu'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalLahirAnak: json['tanggal_lahir_anak'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir: json['tempat_lahir'],
      tempatLahirAnak: json['tempat_lahir_anak'],
      updatedAt: json['updated_at'],
    );
  }
}