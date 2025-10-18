class SKPenghasilanRequestDto {
  final String alamat;
  final String alamatOrtu;
  final String disahkanOleh;
  final String jenisKelaminAnak;
  final String jenisKelaminOrtu;
  final String kelasAnak;
  final String keperluan;
  final String nama;
  final String namaAnak;
  final String namaOrtu;
  final String namaSekolahAnak;
  final String nik;
  final String nikAnak;
  final String nikOrtu;
  final String pekerjaanOrtu;
  final int penghasilanOrtu;
  final String tanggalLahirAnak;
  final String tanggalLahirOrtu;
  final int tanggunganOrtu;
  final String tempatLahirAnak;
  final String tempatLahirOrtu;

  SKPenghasilanRequestDto({
    required this.alamat,
    required this.alamatOrtu,
    required this.disahkanOleh,
    required this.jenisKelaminAnak,
    required this.jenisKelaminOrtu,
    required this.kelasAnak,
    required this.keperluan,
    required this.nama,
    required this.namaAnak,
    required this.namaOrtu,
    required this.namaSekolahAnak,
    required this.nik,
    required this.nikAnak,
    required this.nikOrtu,
    required this.pekerjaanOrtu,
    required this.penghasilanOrtu,
    required this.tanggalLahirAnak,
    required this.tanggalLahirOrtu,
    required this.tanggunganOrtu,
    required this.tempatLahirAnak,
    required this.tempatLahirOrtu,
  });

  Map<String, dynamic> toJson() => {
    'alamat': alamat,
    'alamat_ortu': alamatOrtu,
    'disahkan_oleh': disahkanOleh,
    'jenis_kelamin_anak': jenisKelaminAnak,
    'jenis_kelamin_ortu': jenisKelaminOrtu,
    'kelas_anak': kelasAnak,
    'keperluan': keperluan,
    'nama': nama,
    'nama_anak': namaAnak,
    'nama_ortu': namaOrtu,
    'nama_sekolah_anak': namaSekolahAnak,
    'nik': nik,
    'nik_anak': nikAnak,
    'nik_ortu': nikOrtu,
    'pekerjaan_ortu': pekerjaanOrtu,
    'penghasilan_ortu': penghasilanOrtu,
    'tanggal_lahir_anak': tanggalLahirAnak,
    'tanggal_lahir_ortu': tanggalLahirOrtu,
    'tanggungan_ortu': tanggunganOrtu,
    'tempat_lahir_anak': tempatLahirAnak,
    'tempat_lahir_ortu': tempatLahirOrtu,
  };
}