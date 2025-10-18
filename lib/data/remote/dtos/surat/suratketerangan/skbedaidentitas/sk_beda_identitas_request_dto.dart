class SKBedaIdentitasRequestDto {
  final String alamat1;
  final String alamat2;
  final String disahkanOleh;
  final String keperluan;
  final String nama1;
  final String nama2;
  final String nomor1;
  final String nomor2;
  final String perbedaanId;
  final String tanggalLahir1;
  final String tanggalLahir2;
  final String tempatLahir1;
  final String tempatLahir2;
  final String tercantumId;
  final String tercantumId2;

  SKBedaIdentitasRequestDto({
    required this.alamat1,
    required this.alamat2,
    required this.disahkanOleh,
    required this.keperluan,
    required this.nama1,
    required this.nama2,
    required this.nomor1,
    required this.nomor2,
    required this.perbedaanId,
    required this.tanggalLahir1,
    required this.tanggalLahir2,
    required this.tempatLahir1,
    required this.tempatLahir2,
    required this.tercantumId,
    required this.tercantumId2,
  });

  Map<String, dynamic> toJson() => {
    'alamat_1': alamat1,
    'alamat_2': alamat2,
    'disahkan_oleh': disahkanOleh,
    'keperluan': keperluan,
    'nama_1': nama1,
    'nama_2': nama2,
    'nomor_1': nomor1,
    'nomor_2': nomor2,
    'perbedaan_id': perbedaanId,
    'tanggal_lahir_1': tanggalLahir1,
    'tanggal_lahir_2': tanggalLahir2,
    'tempat_lahir_1': tempatLahir1,
    'tempat_lahir_2': tempatLahir2,
    'tercantum_id': tercantumId,
    'tercantum_id_2': tercantumId2,
  };
}