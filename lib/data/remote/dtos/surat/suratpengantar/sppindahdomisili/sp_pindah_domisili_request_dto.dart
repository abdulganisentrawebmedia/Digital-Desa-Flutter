class SPPindahDomisiliRequestDto {
  final String agamaId;
  final String alamat;
  final String alamatPindah;
  final String alasanPindah;
  final String disahkanOleh;
  final int jumlahAnggota;
  final String keperluan;
  final String nama;
  final String nik;
  final String tanggalLahir;
  final String tempatLahir;

  SPPindahDomisiliRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.alamatPindah,
    required this.alasanPindah,
    required this.disahkanOleh,
    required this.jumlahAnggota,
    required this.keperluan,
    required this.nama,
    required this.nik,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'alamat_pindah': alamatPindah,
    'alasan_pindah': alasanPindah,
    'disahkan_oleh': disahkanOleh,
    'jumlah_anggota': jumlahAnggota,
    'keperluan': keperluan,
    'nama': nama,
    'nik': nik,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}
