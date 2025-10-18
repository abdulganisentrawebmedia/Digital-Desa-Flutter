class SPNPenguasaanFisikBidangTanahResponseDto {
  final SPNDataDto data;

  SPNPenguasaanFisikBidangTanahResponseDto({required this.data});

  factory SPNPenguasaanFisikBidangTanahResponseDto.fromJson(Map<String, dynamic> json) {
    return SPNPenguasaanFisikBidangTanahResponseDto(
      data: SPNDataDto.fromJson(json["data"]),
    );
  }
}

class SPNDataDto {
  final String alamat;
  final String alamat1;
  final String alamat2;
  final String bagianSuratId;
  final String batasBarat;
  final String batasSelatan;
  final String batasTimur;
  final String batasUtara;
  final String createdAt;
  final String? deletedAt;
  final String desa;
  final String dipergunakan;
  final String diperolehDari;
  final String diperolehDengan;
  final String diperolehSejak;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final bool isPemohonWargaDesa;
  final bool isSaksi1WargaDesa;
  final bool isSaksi2WargaDesa;
  final bool isWargaDesa;
  final String jalan;
  final String kabupaten;
  final String kecamatan;
  final String keperluan;
  final String kodeBelakang;
  final String kodeDepan;
  final String luasTanah;
  final String nama1;
  final String nama2;
  final String namaPemohon;
  final String nib;
  final String nik1;
  final String nik2;
  final String nikPemohon;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaan;
  final String pekerjaan1;
  final String pekerjaan2;
  final String rtRw;
  final String status;
  final String statusTanah;
  final String tanggalLahirPemohon;
  final String tanggalSurat;
  final String tempatLahirPemohon;
  final String updatedAt;

  SPNDataDto({
    required this.alamat,
    required this.alamat1,
    required this.alamat2,
    required this.bagianSuratId,
    required this.batasBarat,
    required this.batasSelatan,
    required this.batasTimur,
    required this.batasUtara,
    required this.createdAt,
    this.deletedAt,
    required this.desa,
    required this.dipergunakan,
    required this.diperolehDari,
    required this.diperolehDengan,
    required this.diperolehSejak,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.isPemohonWargaDesa,
    required this.isSaksi1WargaDesa,
    required this.isSaksi2WargaDesa,
    required this.isWargaDesa,
    required this.jalan,
    required this.kabupaten,
    required this.kecamatan,
    required this.keperluan,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.luasTanah,
    required this.nama1,
    required this.nama2,
    required this.namaPemohon,
    required this.nib,
    required this.nik1,
    required this.nik2,
    required this.nikPemohon,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaan,
    required this.pekerjaan1,
    required this.pekerjaan2,
    required this.rtRw,
    required this.status,
    required this.statusTanah,
    required this.tanggalLahirPemohon,
    required this.tanggalSurat,
    required this.tempatLahirPemohon,
    required this.updatedAt,
  });

  factory SPNDataDto.fromJson(Map<String, dynamic> json) {
    return SPNDataDto(
      alamat: json["alamat"],
      alamat1: json["alamat_1"],
      alamat2: json["alamat_2"],
      bagianSuratId: json["bagian_surat_id"],
      batasBarat: json["batas_barat"],
      batasSelatan: json["batas_selatan"],
      batasTimur: json["batas_timur"],
      batasUtara: json["batas_utara"],
      createdAt: json["created_at"],
      deletedAt: json["deleted_at"],
      desa: json["desa"],
      dipergunakan: json["dipergunakan"],
      diperolehDari: json["diperoleh_dari"],
      diperolehDengan: json["diperoleh_dengan"],
      diperolehSejak: json["diperoleh_sejak"],
      diprosesOleh: json["diproses_oleh"],
      diprosesOlehId: json["diproses_oleh_id"],
      disahkanOleh: json["disahkan_oleh"],
      disahkanOlehId: json["disahkan_oleh_id"],
      id: json["id"],
      isPemohonWargaDesa: json["is_pemohon_warga_desa"],
      isSaksi1WargaDesa: json["is_saksi1_warga_desa"],
      isSaksi2WargaDesa: json["is_saksi2_warga_desa"],
      isWargaDesa: json["is_warga_desa"],
      jalan: json["jalan"],
      kabupaten: json["kabupaten"],
      kecamatan: json["kecamatan"],
      keperluan: json["keperluan"],
      kodeBelakang: json["kode_belakang"],
      kodeDepan: json["kode_depan"],
      luasTanah: json["luas_tanah"],
      nama1: json["nama_1"],
      nama2: json["nama_2"],
      namaPemohon: json["nama_pemohon"],
      nib: json["nib"],
      nik1: json["nik_1"],
      nik2: json["nik_2"],
      nikPemohon: json["nik_pemohon"],
      nomorSurat: json["nomor_surat"],
      nomorSuratDeprecated: json["nomor_surat_deprecated"],
      organisasiId: json["organisasi_id"],
      pekerjaan: json["pekerjaan"],
      pekerjaan1: json["pekerjaan_1"],
      pekerjaan2: json["pekerjaan_2"],
      rtRw: json["rt_rw"],
      status: json["status"],
      statusTanah: json["status_tanah"],
      tanggalLahirPemohon: json["tanggal_lahir_pemohon"],
      tanggalSurat: json["tanggal_surat"],
      tempatLahirPemohon: json["tempat_lahir_pemohon"],
      updatedAt: json["updated_at"],
    );
  }
}
