class SKJualBeliRequestDto {
  final String alamat1;
  final String alamat2;
  final String jenisBarang;
  final String jenisKelamin1;
  final String jenisKelamin2;
  final String nama1;
  final String nama2;
  final String nik1;
  final String nik2;
  final String pekerjaan1;
  final String pekerjaan2;
  final String rincianBarang;
  final String tanggalLahir1;
  final String tanggalLahir2;
  final String tempatLahir1;
  final String tempatLahir2;

  SKJualBeliRequestDto({
    required this.alamat1,
    required this.alamat2,
    required this.jenisBarang,
    required this.jenisKelamin1,
    required this.jenisKelamin2,
    required this.nama1,
    required this.nama2,
    required this.nik1,
    required this.nik2,
    required this.pekerjaan1,
    required this.pekerjaan2,
    required this.rincianBarang,
    required this.tanggalLahir1,
    required this.tanggalLahir2,
    required this.tempatLahir1,
    required this.tempatLahir2,
  });

  Map<String, dynamic> toJson() => {
    'alamat_1': alamat1,
    'alamat_2': alamat2,
    'jenis_barang': jenisBarang,
    'jenis_kelamin_1': jenisKelamin1,
    'jenis_kelamin_2': jenisKelamin2,
    'nama_1': nama1,
    'nama_2': nama2,
    'nik_1': nik1,
    'nik_2': nik2,
    'pekerjaan_1': pekerjaan1,
    'pekerjaan_2': pekerjaan2,
    'rincian_barang': rincianBarang,
    'tanggal_lahir_1': tanggalLahir1,
    'tanggal_lahir_2': tanggalLahir2,
    'tempat_lahir_1': tempatLahir1,
    'tempat_lahir_2': tempatLahir2,
  };
}
