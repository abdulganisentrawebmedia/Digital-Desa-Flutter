class SKKematianRequestDto {
  final String alamat;
  final String alamatMendiang;
  final String disahkanOleh;
  final String hariMeninggal;
  final String hubunganId;
  final String jenisKelaminMendiang;
  final String keperluan;
  final String nama;
  final String namaMendiang;
  final String nikMendiang;
  final String sebabMeninggal;
  final String tanggalLahirMendiang;
  final String tanggalMeninggal;
  final String tempatLahirMendiang;
  final String tempatMeninggal;

  SKKematianRequestDto({
    required this.alamat,
    required this.alamatMendiang,
    required this.disahkanOleh,
    required this.hariMeninggal,
    required this.hubunganId,
    required this.jenisKelaminMendiang,
    required this.keperluan,
    required this.nama,
    required this.namaMendiang,
    required this.nikMendiang,
    required this.sebabMeninggal,
    required this.tanggalLahirMendiang,
    required this.tanggalMeninggal,
    required this.tempatLahirMendiang,
    required this.tempatMeninggal,
  });

  Map<String, dynamic> toJson() => {
    'alamat': alamat,
    'alamat_mendiang': alamatMendiang,
    'disahkan_oleh': disahkanOleh,
    'hari_meninggal': hariMeninggal,
    'hubungan_id': hubunganId,
    'jenis_kelamin_mendiang': jenisKelaminMendiang,
    'keperluan': keperluan,
    'nama': nama,
    'nama_mendiang': namaMendiang,
    'nik_mendiang': nikMendiang,
    'sebab_meninggal': sebabMeninggal,
    'tanggal_lahir_mendiang': tanggalLahirMendiang,
    'tanggal_meninggal': tanggalMeninggal,
    'tempat_lahir_mendiang': tempatLahirMendiang,
    'tempat_meninggal': tempatMeninggal,
  };
}
