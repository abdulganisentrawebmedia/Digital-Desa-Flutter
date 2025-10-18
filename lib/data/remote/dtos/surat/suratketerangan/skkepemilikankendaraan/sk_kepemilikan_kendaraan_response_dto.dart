class SKKepemilikanKendaraanResponseDto {
  final SKKepemilikanKendaraanDataDto data;

  SKKepemilikanKendaraanResponseDto({required this.data});

  factory SKKepemilikanKendaraanResponseDto.fromJson(Map<String, dynamic> json) {
    return SKKepemilikanKendaraanResponseDto(
      data: SKKepemilikanKendaraanDataDto.fromJson(json['data']),
    );
  }
}

class SKKepemilikanKendaraanDataDto {
  final String alamat;
  final String atasNama;
  final String bagianSuratId;
  final String bahanBakar;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final bool isWargaDesa;
  final String isiSilinder;
  final String jenisKelamin;
  final String keperluan;
  final String kodeBelakang;
  final String kodeDepan;
  final String merk;
  final String nama;
  final String nik;
  final String nomorBpkb;
  final String nomorMesin;
  final String nomorPolisi;
  final String nomorRangka;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaan;
  final String status;
  final String tahunPembuatan;
  final String tanggalLahir;
  final String tanggalSurat;
  final String tempatLahir;
  final String updatedAt;
  final String warna;

  SKKepemilikanKendaraanDataDto({
    required this.alamat,
    required this.atasNama,
    required this.bagianSuratId,
    required this.bahanBakar,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.isWargaDesa,
    required this.isiSilinder,
    required this.jenisKelamin,
    required this.keperluan,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.merk,
    required this.nama,
    required this.nik,
    required this.nomorBpkb,
    required this.nomorMesin,
    required this.nomorPolisi,
    required this.nomorRangka,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaan,
    required this.status,
    required this.tahunPembuatan,
    required this.tanggalLahir,
    required this.tanggalSurat,
    required this.tempatLahir,
    required this.updatedAt,
    required this.warna,
  });

  factory SKKepemilikanKendaraanDataDto.fromJson(Map<String, dynamic> json) {
    return SKKepemilikanKendaraanDataDto(
      alamat: json['alamat'],
      atasNama: json['atas_nama'],
      bagianSuratId: json['bagian_surat_id'],
      bahanBakar: json['bahan_bakar'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      isWargaDesa: json['is_warga_desa'],
      isiSilinder: json['isi_silinder'],
      jenisKelamin: json['jenis_kelamin'],
      keperluan: json['keperluan'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      merk: json['merk'],
      nama: json['nama'],
      nik: json['nik'],
      nomorBpkb: json['nomor_bpkb'],
      nomorMesin: json['nomor_mesin'],
      nomorPolisi: json['nomor_polisi'],
      nomorRangka: json['nomor_rangka'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      status: json['status'],
      tahunPembuatan: json['tahun_pembuatan'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
      warna: json['warna'],
    );
  }
}
