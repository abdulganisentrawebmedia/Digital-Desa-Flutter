class SPPernikahanResponseDto {
  final SPPernikahanDataDto data;

  SPPernikahanResponseDto({required this.data});

  factory SPPernikahanResponseDto.fromJson(Map<String, dynamic> json) {
    return SPPernikahanResponseDto(
      data: SPPernikahanDataDto.fromJson(json['data']),
    );
  }
}

class SPPernikahanDataDto {
  final String agamaAyahIstriId;
  final String agamaAyahSuamiId;
  final String agamaIbuIstriId;
  final String agamaIbuSuamiId;
  final String agamaIstriId;
  final String agamaSuamiId;
  final String alamatAyahIstri;
  final String alamatAyahSuami;
  final String alamatIbuIstri;
  final String alamatIbuSuami;
  final String alamatIstri;
  final String alamatSuami;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String hari;
  final String id;
  final String jam;
  final int jumlahIstri;
  final String kewarganegaraanAyahIstri;
  final String kewarganegaraanAyahSuami;
  final String kewarganegaraanIbuIstri;
  final String kewarganegaraanIbuSuami;
  final String kewarganegaraanIstri;
  final String kewarganegaraanSuami;
  final String namaAyahIstri;
  final String namaAyahSuami;
  final String namaIbuIstri;
  final String namaIbuSuami;
  final String namaIstri;
  final String? namaIstriSebelumnya;
  final String namaSuami;
  final String? namaSuamiSebelumnya;
  final String nikAyahIstri;
  final String nikAyahSuami;
  final String nikIbuIstri;
  final String nikIbuSuami;
  final String nikIstri;
  final String nikSuami;
  final String nomorSurat;
  final String organisasiId;
  final String pekerjaanAyahIstri;
  final String pekerjaanAyahSuami;
  final String pekerjaanIbuIstri;
  final String pekerjaanIbuSuami;
  final String pekerjaanIstri;
  final String pekerjaanSuami;
  final String status;
  final String statusKawinIstriId;
  final String statusKawinSuamiId;
  final String tanggal;
  final String tanggalLahirAyahIstri;
  final String tanggalLahirAyahSuami;
  final String tanggalLahirIbuIstri;
  final String tanggalLahirIbuSuami;
  final String tanggalLahirIstri;
  final String tanggalLahirSuami;
  final String tempat;
  final String tempatLahirAyahIstri;
  final String tempatLahirAyahSuami;
  final String tempatLahirIbuIstri;
  final String tempatLahirIbuSuami;
  final String tempatLahirIstri;
  final String tempatLahirSuami;
  final String updatedAt;

  SPPernikahanDataDto({
    required this.agamaAyahIstriId,
    required this.agamaAyahSuamiId,
    required this.agamaIbuIstriId,
    required this.agamaIbuSuamiId,
    required this.agamaIstriId,
    required this.agamaSuamiId,
    required this.alamatAyahIstri,
    required this.alamatAyahSuami,
    required this.alamatIbuIstri,
    required this.alamatIbuSuami,
    required this.alamatIstri,
    required this.alamatSuami,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.hari,
    required this.id,
    required this.jam,
    required this.jumlahIstri,
    required this.kewarganegaraanAyahIstri,
    required this.kewarganegaraanAyahSuami,
    required this.kewarganegaraanIbuIstri,
    required this.kewarganegaraanIbuSuami,
    required this.kewarganegaraanIstri,
    required this.kewarganegaraanSuami,
    required this.namaAyahIstri,
    required this.namaAyahSuami,
    required this.namaIbuIstri,
    required this.namaIbuSuami,
    required this.namaIstri,
    this.namaIstriSebelumnya,
    required this.namaSuami,
    this.namaSuamiSebelumnya,
    required this.nikAyahIstri,
    required this.nikAyahSuami,
    required this.nikIbuIstri,
    required this.nikIbuSuami,
    required this.nikIstri,
    required this.nikSuami,
    required this.nomorSurat,
    required this.organisasiId,
    required this.pekerjaanAyahIstri,
    required this.pekerjaanAyahSuami,
    required this.pekerjaanIbuIstri,
    required this.pekerjaanIbuSuami,
    required this.pekerjaanIstri,
    required this.pekerjaanSuami,
    required this.status,
    required this.statusKawinIstriId,
    required this.statusKawinSuamiId,
    required this.tanggal,
    required this.tanggalLahirAyahIstri,
    required this.tanggalLahirAyahSuami,
    required this.tanggalLahirIbuIstri,
    required this.tanggalLahirIbuSuami,
    required this.tanggalLahirIstri,
    required this.tanggalLahirSuami,
    required this.tempat,
    required this.tempatLahirAyahIstri,
    required this.tempatLahirAyahSuami,
    required this.tempatLahirIbuIstri,
    required this.tempatLahirIbuSuami,
    required this.tempatLahirIstri,
    required this.tempatLahirSuami,
    required this.updatedAt,
  });

  factory SPPernikahanDataDto.fromJson(Map<String, dynamic> json) {
    return SPPernikahanDataDto(
      agamaAyahIstriId: json['agama_ayah_istri_id'],
      agamaAyahSuamiId: json['agama_ayah_suami_id'],
      agamaIbuIstriId: json['agama_ibu_istri_id'],
      agamaIbuSuamiId: json['agama_ibu_suami_id'],
      agamaIstriId: json['agama_istri_id'],
      agamaSuamiId: json['agama_suami_id'],
      alamatAyahIstri: json['alamat_ayah_istri'],
      alamatAyahSuami: json['alamat_ayah_suami'],
      alamatIbuIstri: json['alamat_ibu_istri'],
      alamatIbuSuami: json['alamat_ibu_suami'],
      alamatIstri: json['alamat_istri'],
      alamatSuami: json['alamat_suami'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      hari: json['hari'],
      id: json['id'],
      jam: json['jam'],
      jumlahIstri: json['jumlah_istri'],
      kewarganegaraanAyahIstri: json['kewarganegaraan_ayah_istri'],
      kewarganegaraanAyahSuami: json['kewarganegaraan_ayah_suami'],
      kewarganegaraanIbuIstri: json['kewarganegaraan_ibu_istri'],
      kewarganegaraanIbuSuami: json['kewarganegaraan_ibu_suami'],
      kewarganegaraanIstri: json['kewarganegaraan_istri'],
      kewarganegaraanSuami: json['kewarganegaraan_suami'],
      namaAyahIstri: json['nama_ayah_istri'],
      namaAyahSuami: json['nama_ayah_suami'],
      namaIbuIstri: json['nama_ibu_istri'],
      namaIbuSuami: json['nama_ibu_suami'],
      namaIstri: json['nama_istri'],
      namaIstriSebelumnya: json['nama_istri_sebelumnya'],
      namaSuami: json['nama_suami'],
      namaSuamiSebelumnya: json['nama_suami_sebelumnya'],
      nikAyahIstri: json['nik_ayah_istri'],
      nikAyahSuami: json['nik_ayah_suami'],
      nikIbuIstri: json['nik_ibu_istri'],
      nikIbuSuami: json['nik_ibu_suami'],
      nikIstri: json['nik_istri'],
      nikSuami: json['nik_suami'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      pekerjaanAyahIstri: json['pekerjaan_ayah_istri'],
      pekerjaanAyahSuami: json['pekerjaan_ayah_suami'],
      pekerjaanIbuIstri: json['pekerjaan_ibu_istri'],
      pekerjaanIbuSuami: json['pekerjaan_ibu_suami'],
      pekerjaanIstri: json['pekerjaan_istri'],
      pekerjaanSuami: json['pekerjaan_suami'],
      status: json['status'],
      statusKawinIstriId: json['status_kawin_istri_id'],
      statusKawinSuamiId: json['status_kawin_suami_id'],
      tanggal: json['tanggal'],
      tanggalLahirAyahIstri: json['tanggal_lahir_ayah_istri'],
      tanggalLahirAyahSuami: json['tanggal_lahir_ayah_suami'],
      tanggalLahirIbuIstri: json['tanggal_lahir_ibu_istri'],
      tanggalLahirIbuSuami: json['tanggal_lahir_ibu_suami'],
      tanggalLahirIstri: json['tanggal_lahir_istri'],
      tanggalLahirSuami: json['tanggal_lahir_suami'],
      tempat: json['tempat'],
      tempatLahirAyahIstri: json['tempat_lahir_ayah_istri'],
      tempatLahirAyahSuami: json['tempat_lahir_ayah_suami'],
      tempatLahirIbuIstri: json['tempat_lahir_ibu_istri'],
      tempatLahirIbuSuami: json['tempat_lahir_ibu_suami'],
      tempatLahirIstri: json['tempat_lahir_istri'],
      tempatLahirSuami: json['tempat_lahir_suami'],
      updatedAt: json['updated_at'],
    );
  }
}