class SKJualBeliResponseDto {
  final SKJualBeliDataDto data;

  SKJualBeliResponseDto({required this.data});

  factory SKJualBeliResponseDto.fromJson(Map<String, dynamic> json) {
    return SKJualBeliResponseDto(
      data: SKJualBeliDataDto.fromJson(json['data']),
    );
  }
}

class SKJualBeliDataDto {
  final String alamat1;
  final String alamat2;
  final String bagianSuratId;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final bool isWargaDesa;
  final String jenisBarang;
  final String jenisKelamin1;
  final String jenisKelamin2;
  final String kodeBelakang;
  final String kodeDepan;
  final String nama1;
  final String nama2;
  final String nik1;
  final String nik2;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaan1;
  final String pekerjaan2;
  final String rincianBarang;
  final String status;
  final String tanggalLahir1;
  final String tanggalLahir2;
  final String tanggalSurat;
  final String tempatLahir1;
  final String tempatLahir2;
  final String updatedAt;

  SKJualBeliDataDto({
    required this.alamat1,
    required this.alamat2,
    required this.bagianSuratId,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.isWargaDesa,
    required this.jenisBarang,
    required this.jenisKelamin1,
    required this.jenisKelamin2,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.nama1,
    required this.nama2,
    required this.nik1,
    required this.nik2,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaan1,
    required this.pekerjaan2,
    required this.rincianBarang,
    required this.status,
    required this.tanggalLahir1,
    required this.tanggalLahir2,
    required this.tanggalSurat,
    required this.tempatLahir1,
    required this.tempatLahir2,
    required this.updatedAt,
  });

  factory SKJualBeliDataDto.fromJson(Map<String, dynamic> json) {
    return SKJualBeliDataDto(
      alamat1: json['alamat_1'],
      alamat2: json['alamat_2'],
      bagianSuratId: json['bagian_surat_id'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      isWargaDesa: json['is_warga_desa'],
      jenisBarang: json['jenis_barang'],
      jenisKelamin1: json['jenis_kelamin_1'],
      jenisKelamin2: json['jenis_kelamin_2'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      nama1: json['nama_1'],
      nama2: json['nama_2'],
      nik1: json['nik_1'],
      nik2: json['nik_2'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaan1: json['pekerjaan_1'],
      pekerjaan2: json['pekerjaan_2'],
      rincianBarang: json['rincian_barang'],
      status: json['status'],
      tanggalLahir1: json['tanggal_lahir_1'],
      tanggalLahir2: json['tanggal_lahir_2'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir1: json['tempat_lahir_1'],
      tempatLahir2: json['tempat_lahir_2'],
      updatedAt: json['updated_at'],
    );
  }
}