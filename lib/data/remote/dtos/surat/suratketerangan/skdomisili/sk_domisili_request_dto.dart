class SKDomisiliRequestDto {
  final String agamaId;
  final String alamat;
  final String alamatIdentitas;
  final String disahkanOleh;
  final String jenisKelamin;
  final int jumlahPengikut;
  final String keperluan;
  final String kewarganegaraan;
  final String nama;
  final String nik;
  final String pekerjaan;
  final String tanggalLahir;
  final String tempatLahir;
  final bool wargaDesa;

  SKDomisiliRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.alamatIdentitas,
    required this.disahkanOleh,
    required this.jenisKelamin,
    required this.jumlahPengikut,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.nama,
    required this.nik,
    required this.pekerjaan,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.wargaDesa,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'alamat_identitas': alamatIdentitas,
    'disahkan_oleh': disahkanOleh,
    'jenis_kelamin': jenisKelamin,
    'jumlah_pengikut': jumlahPengikut,
    'keperluan': keperluan,
    'kewarganegaraan': kewarganegaraan,
    'nama': nama,
    'nik': nik,
    'pekerjaan': pekerjaan,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
    'warga_desa': wargaDesa,
  };
}