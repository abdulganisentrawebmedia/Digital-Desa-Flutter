class SRKeramaianRequestDto {
  final String alamat;
  final String dimulai;
  final String disahkanOleh;
  final String hari;
  final String jenisKelamin;
  final String kontak;
  final String nama;
  final String namaAcara;
  final String nik;
  final String pekerjaan;
  final String penanggungJawab;
  final String selesai;
  final String tanggal;
  final String tanggalLahir;
  final String tempatAcara;
  final String tempatLahir;

  SRKeramaianRequestDto({
    required this.alamat,
    required this.dimulai,
    required this.disahkanOleh,
    required this.hari,
    required this.jenisKelamin,
    required this.kontak,
    required this.nama,
    required this.namaAcara,
    required this.nik,
    required this.pekerjaan,
    required this.penanggungJawab,
    required this.selesai,
    required this.tanggal,
    required this.tanggalLahir,
    required this.tempatAcara,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'alamat': alamat,
    'dimulai': dimulai,
    'disahkan_oleh': disahkanOleh,
    'hari': hari,
    'jenis_kelamin': jenisKelamin,
    'kontak': kontak,
    'nama': nama,
    'nama_acara': namaAcara,
    'nik': nik,
    'pekerjaan': pekerjaan,
    'penanggung_jawab': penanggungJawab,
    'selesai': selesai,
    'tanggal': tanggal,
    'tanggal_lahir': tanggalLahir,
    'tempat_acara': tempatAcara,
    'tempat_lahir': tempatLahir,
  };
}