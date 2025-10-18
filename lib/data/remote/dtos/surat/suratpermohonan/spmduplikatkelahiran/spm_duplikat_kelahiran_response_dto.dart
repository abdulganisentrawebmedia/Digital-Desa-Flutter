class SPMDuplikatKelahiranResponseDto {
  final SPMDuplikatKelahiranDataDto data;

  SPMDuplikatKelahiranResponseDto({required this.data});

  factory SPMDuplikatKelahiranResponseDto.fromJson(Map<String, dynamic> json) {
    return SPMDuplikatKelahiranResponseDto(
      data: SPMDuplikatKelahiranDataDto.fromJson(json['data']),
    );
  }
}

class SPMDuplikatKelahiranDataDto {
  final String agamaIdAnak;
  final String alamat;
  final String alamatAnak;
  final String alamatAyah;
  final String alamatIbu;
  final bool isWargaDesa;
  final String jenisKelaminAnak;
  final String keperluan;
  final String nama;
  final String namaAnak;
  final String namaAyah;
  final String namaIbu;
  final String nik;
  final String nikAnak;
  final String nikAyah;
  final String nikIbu;
  final String pekerjaan;
  final String pekerjaanAyah;
  final String pekerjaanIbu;
  final String tanggalLahir;
  final String tanggalLahirAnak;
  final String tempatLahir;
  final String tempatLahirAnak;

  SPMDuplikatKelahiranDataDto({
    required this.agamaIdAnak,
    required this.alamat,
    required this.alamatAnak,
    required this.alamatAyah,
    required this.alamatIbu,
    required this.isWargaDesa,
    required this.jenisKelaminAnak,
    required this.keperluan,
    required this.nama,
    required this.namaAnak,
    required this.namaAyah,
    required this.namaIbu,
    required this.nik,
    required this.nikAnak,
    required this.nikAyah,
    required this.nikIbu,
    required this.pekerjaan,
    required this.pekerjaanAyah,
    required this.pekerjaanIbu,
    required this.tanggalLahir,
    required this.tanggalLahirAnak,
    required this.tempatLahir,
    required this.tempatLahirAnak,
  });

  factory SPMDuplikatKelahiranDataDto.fromJson(Map<String, dynamic> json) {
    return SPMDuplikatKelahiranDataDto(
      agamaIdAnak: json['agama_id_anak'],
      alamat: json['alamat'],
      alamatAnak: json['alamat_anak'],
      alamatAyah: json['alamat_ayah'],
      alamatIbu: json['alamat_ibu'],
      isWargaDesa: json['is_warga_desa'],
      jenisKelaminAnak: json['jenis_kelamin_anak'],
      keperluan: json['keperluan'],
      nama: json['nama'],
      namaAnak: json['nama_anak'],
      namaAyah: json['nama_ayah'],
      namaIbu: json['nama_ibu'],
      nik: json['nik'],
      nikAnak: json['nik_anak'],
      nikAyah: json['nik_ayah'],
      nikIbu: json['nik_ibu'],
      pekerjaan: json['pekerjaan'],
      pekerjaanAyah: json['pekerjaan_ayah'],
      pekerjaanIbu: json['pekerjaan_ibu'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalLahirAnak: json['tanggal_lahir_anak'],
      tempatLahir: json['tempat_lahir'],
      tempatLahirAnak: json['tempat_lahir_anak'],
    );
  }
}
