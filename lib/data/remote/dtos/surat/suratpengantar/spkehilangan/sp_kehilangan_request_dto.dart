class SPKehilanganRequestDto {
  final String alamat;
  final String ciri;
  final String disahkanOleh;
  final String jenisBarang;
  final String jenisKelamin;
  final String keperluan;
  final String nama;
  final String nik;
  final String pekerjaan;
  final String tanggalLahir;
  final String tempatKehilangan;
  final String tempatLahir;
  final String waktuKehilangan;

  SPKehilanganRequestDto({
    required this.alamat,
    required this.ciri,
    required this.disahkanOleh,
    required this.jenisBarang,
    required this.jenisKelamin,
    required this.keperluan,
    required this.nama,
    required this.nik,
    required this.pekerjaan,
    required this.tanggalLahir,
    required this.tempatKehilangan,
    required this.tempatLahir,
    required this.waktuKehilangan,
  });

  Map<String, dynamic> toJson() => {
    'alamat': alamat,
    'ciri': ciri,
    'disahkan_oleh': disahkanOleh,
    'jenis_barang': jenisBarang,
    'jenis_kelamin': jenisKelamin,
    'keperluan': keperluan,
    'nama': nama,
    'nik': nik,
    'pekerjaan': pekerjaan,
    'tanggal_lahir': tanggalLahir,
    'tempat_kehilangan': tempatKehilangan,
    'tempat_lahir': tempatLahir,
    'waktu_kehilangan': waktuKehilangan,
  };
}