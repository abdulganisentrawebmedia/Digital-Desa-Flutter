class SKWaliHakimRequestDto {
  final String agamaId;
  final String alamat;
  final String berlakuMulai;
  final String berlakuSampai;
  final String jenisKelamin;
  final String keperluan;
  final String kewarganegaraan;
  final String nama;
  final String nik;
  final String pekerjaan;
  final String pendidikanId;
  final String statusKawinId;
  final String tanggalLahir;
  final String tempatLahir;
  final String tujuan;

  SKWaliHakimRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.berlakuMulai,
    required this.berlakuSampai,
    required this.jenisKelamin,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.nama,
    required this.nik,
    required this.pekerjaan,
    required this.pendidikanId,
    required this.statusKawinId,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.tujuan,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'berlaku_mulai': berlakuMulai,
    'berlaku_sampai': berlakuSampai,
    'jenis_kelamin': jenisKelamin,
    'keperluan': keperluan,
    'kewarganegaraan': kewarganegaraan,
    'nama': nama,
    'nik': nik,
    'pekerjaan': pekerjaan,
    'pendidikan_id': pendidikanId,
    'status_kawin_id': statusKawinId,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
    'tujuan': tujuan,
  };
}
