class SKJamkesosRequestDto {
  final String agamaId;
  final String alamat;
  final String berlakuDari;
  final String berlakuSampai;
  final String jenisKelamin;
  final String keperluan;
  final String nama;
  final String nik;
  final String noKartu;
  final String pekerjaan;
  final String pendidikanId;
  final String statusKawinId;
  final String tanggalLahir;
  final String tempatLahir;

  SKJamkesosRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.berlakuDari,
    required this.berlakuSampai,
    required this.jenisKelamin,
    required this.keperluan,
    required this.nama,
    required this.nik,
    required this.noKartu,
    required this.pekerjaan,
    required this.pendidikanId,
    required this.statusKawinId,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'berlaku_dari': berlakuDari,
    'berlaku_sampai': berlakuSampai,
    'jenis_kelamin': jenisKelamin,
    'keperluan': keperluan,
    'nama': nama,
    'nik': nik,
    'no_kartu': noKartu,
    'pekerjaan': pekerjaan,
    'pendidikan_id': pendidikanId,
    'status_kawin_id': statusKawinId,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}