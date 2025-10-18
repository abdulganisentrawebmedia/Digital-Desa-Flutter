class SKPenghasilanResponseDto {
  final SKPenghasilanDataDto data;

  SKPenghasilanResponseDto({required this.data});

  factory SKPenghasilanResponseDto.fromJson(Map<String, dynamic> json) {
    return SKPenghasilanResponseDto(
      data: SKPenghasilanDataDto.fromJson(json['data']),
    );
  }
}

class SKPenghasilanDataDto {
  final String alamat;
  final String alamatOrtu;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
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
  final String nomorSurat;
  final String organisasiId;
  final String pekerjaanOrtu;
  final int penghasilanOrtu;
  final String status;
  final String tanggalLahirAnak;
  final String tanggalLahirOrtu;
  final int tanggunganOrtu;
  final String tempatLahirAnak;
  final String tempatLahirOrtu;
  final String updatedAt;

  SKPenghasilanDataDto({
    required this.alamat,
    required this.alamatOrtu,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
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
    required this.nomorSurat,
    required this.organisasiId,
    required this.pekerjaanOrtu,
    required this.penghasilanOrtu,
    required this.status,
    required this.tanggalLahirAnak,
    required this.tanggalLahirOrtu,
    required this.tanggunganOrtu,
    required this.tempatLahirAnak,
    required this.tempatLahirOrtu,
    required this.updatedAt,
  });

  factory SKPenghasilanDataDto.fromJson(Map<String, dynamic> json) {
    return SKPenghasilanDataDto(
      alamat: json['alamat'],
      alamatOrtu: json['alamat_ortu'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      jenisKelaminAnak: json['jenis_kelamin_anak'],
      jenisKelaminOrtu: json['jenis_kelamin_ortu'],
      kelasAnak: json['kelas_anak'],
      keperluan: json['keperluan'],
      nama: json['nama'],
      namaAnak: json['nama_anak'],
      namaOrtu: json['nama_ortu'],
      namaSekolahAnak: json['nama_sekolah_anak'],
      nik: json['nik'],
      nikAnak: json['nik_anak'],
      nikOrtu: json['nik_ortu'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      pekerjaanOrtu: json['pekerjaan_ortu'],
      penghasilanOrtu: json['penghasilan_ortu'],
      status: json['status'],
      tanggalLahirAnak: json['tanggal_lahir_anak'],
      tanggalLahirOrtu: json['tanggal_lahir_ortu'],
      tanggunganOrtu: json['tanggungan_ortu'],
      tempatLahirAnak: json['tempat_lahir_anak'],
      tempatLahirOrtu: json['tempat_lahir_ortu'],
      updatedAt: json['updated_at'],
    );
  }
}