class SKIzinTidakMasukKerjaRequestDto {
  final String agamaId;
  final String alamat;
  final String alasanIzin;
  final String disahkanOleh;
  final String jabatan;
  final String jenisKelamin;
  final String keperluan;
  final int lama;
  final String nama;
  final String namaPerusahaan;
  final String nik;
  final String pekerjaan;
  final String tanggalLahir;
  final String tempatLahir;
  final String terhitungDari;

  SKIzinTidakMasukKerjaRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.alasanIzin,
    required this.disahkanOleh,
    required this.jabatan,
    required this.jenisKelamin,
    required this.keperluan,
    required this.lama,
    required this.nama,
    required this.namaPerusahaan,
    required this.nik,
    required this.pekerjaan,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.terhitungDari,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'alasan_izin': alasanIzin,
    'disahkan_oleh': disahkanOleh,
    'jabatan': jabatan,
    'jenis_kelamin': jenisKelamin,
    'keperluan': keperluan,
    'lama': lama,
    'nama': nama,
    'nama_perusahaan': namaPerusahaan,
    'nik': nik,
    'pekerjaan': pekerjaan,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
    'terhitung_dari': terhitungDari,
  };
}