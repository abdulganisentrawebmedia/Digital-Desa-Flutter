class SPAnggotaKeluargaDto {
  final String keterangan;
  final String nik;

  SPAnggotaKeluargaDto({
    required this.keterangan,
    required this.nik,
  });

  Map<String, dynamic> toJson() => {
    'keterangan': keterangan,
    'nik': nik,
  };

  factory SPAnggotaKeluargaDto.fromJson(Map<String, dynamic> json) {
    return SPAnggotaKeluargaDto(
      keterangan: json['keterangan'],
      nik: json['nik'],
    );
  }
}

class SPPermohonanPenerbitanBukuPasLintasBatasRequestDto {
  final String agamaId;
  final String alamat;
  final List<SPAnggotaKeluargaDto> anggotaKeluarga;
  final String jenisKelamin;
  final String kepalaKeluarga;
  final String keperluan;
  final String kewarganegaraan;
  final String nama;
  final String nik;
  final String noKk;
  final String pekerjaan;
  final String statusKawinId;
  final String tanggalLahir;
  final String tempatLahir;

  SPPermohonanPenerbitanBukuPasLintasBatasRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.anggotaKeluarga,
    required this.jenisKelamin,
    required this.kepalaKeluarga,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.nama,
    required this.nik,
    required this.noKk,
    required this.pekerjaan,
    required this.statusKawinId,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'anggota_keluarga': anggotaKeluarga.map((e) => e.toJson()).toList(),
    'jenis_kelamin': jenisKelamin,
    'kepala_keluarga': kepalaKeluarga,
    'keperluan': keperluan,
    'kewarganegaraan': kewarganegaraan,
    'nama': nama,
    'nik': nik,
    'no_kk': noKk,
    'pekerjaan': pekerjaan,
    'status_kawin_id': statusKawinId,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}
