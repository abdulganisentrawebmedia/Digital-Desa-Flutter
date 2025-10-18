class SPPindahDomisiliResponseDto {
  final SPPindahDomisiliDataDto data;

  SPPindahDomisiliResponseDto({required this.data});

  factory SPPindahDomisiliResponseDto.fromJson(Map<String, dynamic> json) {
    return SPPindahDomisiliResponseDto(
      data: SPPindahDomisiliDataDto.fromJson(json['data']),
    );
  }
}

class SPPindahDomisiliDataDto {
  final String agamaId;
  final String alamat;
  final String alamatPindah;
  final String alasanPindah;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final int jumlahAnggota;
  final String keperluan;
  final String nama;
  final String nik;
  final String nomorSurat;
  final String organisasiId;
  final String status;
  final String tanggalLahir;
  final String tempatLahir;
  final String updatedAt;

  SPPindahDomisiliDataDto({
    required this.agamaId,
    required this.alamat,
    required this.alamatPindah,
    required this.alasanPindah,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.jumlahAnggota,
    required this.keperluan,
    required this.nama,
    required this.nik,
    required this.nomorSurat,
    required this.organisasiId,
    required this.status,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.updatedAt,
  });

  factory SPPindahDomisiliDataDto.fromJson(Map<String, dynamic> json) {
    return SPPindahDomisiliDataDto(
      agamaId: json['agama_id'],
      alamat: json['alamat'],
      alamatPindah: json['alamat_pindah'],
      alasanPindah: json['alasan_pindah'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      jumlahAnggota: json['jumlah_anggota'],
      keperluan: json['keperluan'],
      nama: json['nama'],
      nik: json['nik'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
    );
  }
}