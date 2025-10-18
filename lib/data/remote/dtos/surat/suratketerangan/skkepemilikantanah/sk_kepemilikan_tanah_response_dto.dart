class SKKepemilikanTanahResponseDto {
  final SKKepemilikanTanahDataDto data;

  SKKepemilikanTanahResponseDto({required this.data});

  factory SKKepemilikanTanahResponseDto.fromJson(Map<String, dynamic> json) {
    return SKKepemilikanTanahResponseDto(
      data: SKKepemilikanTanahDataDto.fromJson(json['data']),
    );
  }
}

class SKKepemilikanTanahDataDto {
  final String alamat;
  final String asalKepemilikanTanah;
  final String atasNama;
  final String bagianSuratId;
  final String batasBarat;
  final String batasSelatan;
  final String batasTimur;
  final String batasUtara;
  final String buktiKepemilikanTanah;
  final String buktiKepemilikanTanahTanah;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final bool isWargaDesa;
  final String jenisKelamin;
  final String jenisTanah;
  final String keperluan;
  final String kodeBelakang;
  final String kodeDepan;
  final String luasTanah;
  final String nama;
  final String nik;
  final String nomorBuktiKepemilikan;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaan;
  final String status;
  final String tanggalLahir;
  final String tanggalSurat;
  final String tempatLahir;
  final String updatedAt;

  SKKepemilikanTanahDataDto({
    required this.alamat,
    required this.asalKepemilikanTanah,
    required this.atasNama,
    required this.bagianSuratId,
    required this.batasBarat,
    required this.batasSelatan,
    required this.batasTimur,
    required this.batasUtara,
    required this.buktiKepemilikanTanah,
    required this.buktiKepemilikanTanahTanah,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.isWargaDesa,
    required this.jenisKelamin,
    required this.jenisTanah,
    required this.keperluan,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.luasTanah,
    required this.nama,
    required this.nik,
    required this.nomorBuktiKepemilikan,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaan,
    required this.status,
    required this.tanggalLahir,
    required this.tanggalSurat,
    required this.tempatLahir,
    required this.updatedAt,
  });

  factory SKKepemilikanTanahDataDto.fromJson(Map<String, dynamic> json) {
    return SKKepemilikanTanahDataDto(
      alamat: json['alamat'],
      asalKepemilikanTanah: json['asal_kepemilikan_tanah'],
      atasNama: json['atas_nama'],
      bagianSuratId: json['bagian_surat_id'],
      batasBarat: json['batas_barat'],
      batasSelatan: json['batas_selatan'],
      batasTimur: json['batas_timur'],
      batasUtara: json['batas_utara'],
      buktiKepemilikanTanah: json['bukti_kepemilikan_tanah'],
      buktiKepemilikanTanahTanah: json['bukti_kepemilikan_tanah_tanah'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      isWargaDesa: json['is_warga_desa'],
      jenisKelamin: json['jenis_kelamin'],
      jenisTanah: json['jenis_tanah'],
      keperluan: json['keperluan'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      luasTanah: json['luas_tanah'],
      nama: json['nama'],
      nik: json['nik'],
      nomorBuktiKepemilikan: json['nomor_bukti_kepemilikan'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
    );
  }
}
