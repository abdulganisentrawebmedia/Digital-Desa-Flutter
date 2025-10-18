class SKUsahaRequestDto {
  final String alamat;
  final String alamatUsaha;
  final String bidangUsahaId;
  final String disahkanOleh;
  final String jenisKelamin;
  final String jenisUsahaId;
  final String keperluan;
  final String nama;
  final String namaUsaha;
  final String nik;
  final String npwp;
  final String pekerjaan;
  final String tanggalLahir;
  final String tempatLahir;

  SKUsahaRequestDto({
    required this.alamat,
    required this.alamatUsaha,
    required this.bidangUsahaId,
    required this.disahkanOleh,
    required this.jenisKelamin,
    required this.jenisUsahaId,
    required this.keperluan,
    required this.nama,
    required this.namaUsaha,
    required this.nik,
    required this.npwp,
    required this.pekerjaan,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'alamat': alamat,
    'alamat_usaha': alamatUsaha,
    'bidang_usaha_id': bidangUsahaId,
    'disahkan_oleh': disahkanOleh,
    'jenis_kelamin': jenisKelamin,
    'jenis_usaha_id': jenisUsahaId,
    'keperluan': keperluan,
    'nama': nama,
    'nama_usaha': namaUsaha,
    'nik': nik,
    'npwp': npwp,
    'pekerjaan': pekerjaan,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}