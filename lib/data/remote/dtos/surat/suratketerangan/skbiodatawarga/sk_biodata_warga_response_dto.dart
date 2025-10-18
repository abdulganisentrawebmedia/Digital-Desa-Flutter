class SKBiodataWargaResponseDto {
  final SKBiodataWargaDataDto data;

  SKBiodataWargaResponseDto({required this.data});

  factory SKBiodataWargaResponseDto.fromJson(Map<String, dynamic> json) {
    return SKBiodataWargaResponseDto(
      data: SKBiodataWargaDataDto.fromJson(json['data']),
    );
  }
}

class SKBiodataWargaDataDto {
  final String agamaId;
  final String aktaCerai;
  final String aktaKawin;
  final String aktaLahir;
  final String alamat;
  final String? anggotaKeluarga;
  final String bagianSuratId;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disabilitasId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String golonganDarah;
  final String hubungan;
  final String id;
  final bool isWargaDesa;
  final String jenisKelamin;
  final String kepalaKeluarga;
  final String keperluan;
  final String kodeBelakang;
  final String kodeDepan;
  final String nama;
  final String namaAyah;
  final String namaIbu;
  final String nik;
  final String nikAyah;
  final String nikIbu;
  final String noKk;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaan;
  final String pendidikanId;
  final String status;
  final String tanggalCerai;
  final String tanggalKawin;
  final String tanggalLahir;
  final String tanggalSurat;
  final String tempatLahir;
  final String updatedAt;

  SKBiodataWargaDataDto({
    required this.agamaId,
    required this.aktaCerai,
    required this.aktaKawin,
    required this.aktaLahir,
    required this.alamat,
    this.anggotaKeluarga,
    required this.bagianSuratId,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disabilitasId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.golonganDarah,
    required this.hubungan,
    required this.id,
    required this.isWargaDesa,
    required this.jenisKelamin,
    required this.kepalaKeluarga,
    required this.keperluan,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.nama,
    required this.namaAyah,
    required this.namaIbu,
    required this.nik,
    required this.nikAyah,
    required this.nikIbu,
    required this.noKk,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaan,
    required this.pendidikanId,
    required this.status,
    required this.tanggalCerai,
    required this.tanggalKawin,
    required this.tanggalLahir,
    required this.tanggalSurat,
    required this.tempatLahir,
    required this.updatedAt,
  });

  factory SKBiodataWargaDataDto.fromJson(Map<String, dynamic> json) {
    return SKBiodataWargaDataDto(
      agamaId: json['agama_id'],
      aktaCerai: json['akta_cerai'],
      aktaKawin: json['akta_kawin'],
      aktaLahir: json['akta_lahir'],
      alamat: json['alamat'],
      anggotaKeluarga: json['anggota_keluarga'],
      bagianSuratId: json['bagian_surat_id'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disabilitasId: json['disabilitas_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      golonganDarah: json['golongan_darah'],
      hubungan: json['hubungan'],
      id: json['id'],
      isWargaDesa: json['is_warga_desa'],
      jenisKelamin: json['jenis_kelamin'],
      kepalaKeluarga: json['kepala_keluarga'],
      keperluan: json['keperluan'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      nama: json['nama'],
      namaAyah: json['nama_ayah'],
      namaIbu: json['nama_ibu'],
      nik: json['nik'],
      nikAyah: json['nik_ayah'],
      nikIbu: json['nik_ibu'],
      noKk: json['no_kk'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      pendidikanId: json['pendidikan_id'],
      status: json['status'],
      tanggalCerai: json['tanggal_cerai'],
      tanggalKawin: json['tanggal_kawin'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
    );
  }
}
