class SPMDuplikatSuratNikahRequestDto {
  final String agamaId;
  final String alamat;
  final String jenisKelamin;
  final String kecamatanKua;
  final String kepalaKeluarga;
  final String keperluan;
  final String kewarganegaraan;
  final String nama;
  final String namaPasangan;
  final String nik;
  final String noKk;
  final String pekerjaan;
  final String pendidikanId;
  final String tanggalLahir;
  final String tanggalNikah;
  final String tempatLahir;

  SPMDuplikatSuratNikahRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.jenisKelamin,
    required this.kecamatanKua,
    required this.kepalaKeluarga,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.nama,
    required this.namaPasangan,
    required this.nik,
    required this.noKk,
    required this.pekerjaan,
    required this.pendidikanId,
    required this.tanggalLahir,
    required this.tanggalNikah,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'jenis_kelamin': jenisKelamin,
    'kecamatan_kua': kecamatanKua,
    'kepala_keluarga': kepalaKeluarga,
    'keperluan': keperluan,
    'kewarganegaraan': kewarganegaraan,
    'nama': nama,
    'nama_pasangan': namaPasangan,
    'nik': nik,
    'no_kk': noKk,
    'pekerjaan': pekerjaan,
    'pendidikan_id': pendidikanId,
    'tanggal_lahir': tanggalLahir,
    'tanggal_nikah': tanggalNikah,
    'tempat_lahir': tempatLahir,
  };
}