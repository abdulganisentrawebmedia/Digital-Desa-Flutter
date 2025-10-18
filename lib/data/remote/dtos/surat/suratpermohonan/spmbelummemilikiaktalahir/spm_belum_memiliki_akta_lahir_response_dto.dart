class SPMBelumMemilikiAktaLahirResponseDto {
  final SPMBelumMemilikiAktaLahirDataDto data;

  SPMBelumMemilikiAktaLahirResponseDto({required this.data});

  factory SPMBelumMemilikiAktaLahirResponseDto.fromJson(
      Map<String, dynamic> json) {
    return SPMBelumMemilikiAktaLahirResponseDto(
      data: SPMBelumMemilikiAktaLahirDataDto.fromJson(json['data']),
    );
  }
}

class SPMBelumMemilikiAktaLahirDataDto {
  final String alamat;
  final String bagianSuratId;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final bool isWargaDesa;
  final String jenisKelamin;
  final String keperluan;
  final String kodeBelakang;
  final String kodeDepan;
  final String nama;
  final String namaAyah;
  final String namaIbu;
  final String nik;
  final String nikAyah;
  final String nikIbu;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String status;
  final String tanggalLahir;
  final String tanggalSurat;
  final String tempatLahir;
  final String updatedAt;

  SPMBelumMemilikiAktaLahirDataDto({
    required this.alamat,
    required this.bagianSuratId,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.isWargaDesa,
    required this.jenisKelamin,
    required this.keperluan,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.nama,
    required this.namaAyah,
    required this.namaIbu,
    required this.nik,
    required this.nikAyah,
    required this.nikIbu,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.status,
    required this.tanggalLahir,
    required this.tanggalSurat,
    required this.tempatLahir,
    required this.updatedAt,
  });

  factory SPMBelumMemilikiAktaLahirDataDto.fromJson(
      Map<String, dynamic> json) {
    return SPMBelumMemilikiAktaLahirDataDto(
      alamat: json['alamat'],
      bagianSuratId: json['bagian_surat_id'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      isWargaDesa: json['is_warga_desa'],
      jenisKelamin: json['jenis_kelamin'],
      keperluan: json['keperluan'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      nama: json['nama'],
      namaAyah: json['nama_ayah'],
      namaIbu: json['nama_ibu'],
      nik: json['nik'],
      nikAyah: json['nik_ayah'],
      nikIbu: json['nik_ibu'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
    );
  }
}
