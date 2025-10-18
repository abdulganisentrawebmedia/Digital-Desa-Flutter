class SPMCeraiRequestDto {
  final String agamaIdIstri;
  final String agamaIdSuami;
  final String alamatIstri;
  final String alamatSuami;
  final String keperluan;
  final String namaIstri;
  final String namaSuami;
  final String nikIstri;
  final String nikSuami;
  final String pekerjaanIstri;
  final String pekerjaanSuami;
  final String sebabCerai;
  final String tanggalLahirIstri;
  final String tanggalLahirSuami;
  final String tempatLahirIstri;
  final String tempatLahirSuami;

  SPMCeraiRequestDto({
    required this.agamaIdIstri,
    required this.agamaIdSuami,
    required this.alamatIstri,
    required this.alamatSuami,
    required this.keperluan,
    required this.namaIstri,
    required this.namaSuami,
    required this.nikIstri,
    required this.nikSuami,
    required this.pekerjaanIstri,
    required this.pekerjaanSuami,
    required this.sebabCerai,
    required this.tanggalLahirIstri,
    required this.tanggalLahirSuami,
    required this.tempatLahirIstri,
    required this.tempatLahirSuami,
  });

  Map<String, dynamic> toJson() => {
    'agama_id_istri': agamaIdIstri,
    'agama_id_suami': agamaIdSuami,
    'alamat_istri': alamatIstri,
    'alamat_suami': alamatSuami,
    'keperluan': keperluan,
    'nama_istri': namaIstri,
    'nama_suami': namaSuami,
    'nik_istri': nikIstri,
    'nik_suami': nikSuami,
    'pekerjaan_istri': pekerjaanIstri,
    'pekerjaan_suami': pekerjaanSuami,
    'sebab_cerai': sebabCerai,
    'tanggal_lahir_istri': tanggalLahirIstri,
    'tanggal_lahir_suami': tanggalLahirSuami,
    'tempat_lahir_istri': tempatLahirIstri,
    'tempat_lahir_suami': tempatLahirSuami,
  };
}