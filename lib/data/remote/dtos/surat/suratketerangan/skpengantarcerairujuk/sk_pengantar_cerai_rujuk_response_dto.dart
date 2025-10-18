class SKPengantarCeraiRujukResponseDto {
  final SKPengantarCeraiRujukDataDto data;

  SKPengantarCeraiRujukResponseDto({required this.data});

  factory SKPengantarCeraiRujukResponseDto.fromJson(Map<String, dynamic> json) {
    return SKPengantarCeraiRujukResponseDto(
      data: SKPengantarCeraiRujukDataDto.fromJson(json['data']),
    );
  }
}

class SKPengantarCeraiRujukDataDto {
  final String agamaId;
  final String agamaIdPasangan;
  final String alamat;
  final String alamatPasangan;
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
  final String kewarganegaraan;
  final String kewarganegaraanPasangan;
  final String kodeBelakang;
  final String kodeDepan;
  final String nama;
  final String namaAyah;
  final String namaAyahPasangan;
  final String namaPasangan;
  final String nik;
  final String nikAyah;
  final String nikAyahPasangan;
  final String nikPasangan;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaan;
  final String pekerjaanPasangan;
  final String status;
  final String tanggalLahir;
  final String tanggalLahirPasangan;
  final String tanggalSurat;
  final String tempatLahir;
  final String tempatLahirPasangan;
  final String updatedAt;

  SKPengantarCeraiRujukDataDto({
    required this.agamaId,
    required this.agamaIdPasangan,
    required this.alamat,
    required this.alamatPasangan,
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
    required this.kewarganegaraan,
    required this.kewarganegaraanPasangan,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.nama,
    required this.namaAyah,
    required this.namaAyahPasangan,
    required this.namaPasangan,
    required this.nik,
    required this.nikAyah,
    required this.nikAyahPasangan,
    required this.nikPasangan,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaan,
    required this.pekerjaanPasangan,
    required this.status,
    required this.tanggalLahir,
    required this.tanggalLahirPasangan,
    required this.tanggalSurat,
    required this.tempatLahir,
    required this.tempatLahirPasangan,
    required this.updatedAt,
  });

  factory SKPengantarCeraiRujukDataDto.fromJson(Map<String, dynamic> json) {
    return SKPengantarCeraiRujukDataDto(
      agamaId: json['agama_id'],
      agamaIdPasangan: json['agama_id_pasangan'],
      alamat: json['alamat'],
      alamatPasangan: json['alamat_pasangan'],
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
      kewarganegaraan: json['kewarganegaraan'],
      kewarganegaraanPasangan: json['kewarganegaraan_pasangan'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      nama: json['nama'],
      namaAyah: json['nama_ayah'],
      namaAyahPasangan: json['nama_ayah_pasangan'],
      namaPasangan: json['nama_pasangan'],
      nik: json['nik'],
      nikAyah: json['nik_ayah'],
      nikAyahPasangan: json['nik_ayah_pasangan'],
      nikPasangan: json['nik_pasangan'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      pekerjaanPasangan: json['pekerjaan_pasangan'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalLahirPasangan: json['tanggal_lahir_pasangan'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir: json['tempat_lahir'],
      tempatLahirPasangan: json['tempat_lahir_pasangan'],
      updatedAt: json['updated_at'],
    );
  }
}