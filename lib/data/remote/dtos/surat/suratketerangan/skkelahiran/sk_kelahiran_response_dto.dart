class SKKelahiranResponseDto {
  final SKKelahiranDataDto data;

  SKKelahiranResponseDto({required this.data});

  factory SKKelahiranResponseDto.fromJson(Map<String, dynamic> json) {
    return SKKelahiranResponseDto(
      data: SKKelahiranDataDto.fromJson(json['data']),
    );
  }
}

class SKKelahiranDataDto {
  final String alamat;
  final String alamatAyah;
  final String alamatIbu;
  final int anakKe;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final String jamLahir;
  final String jenisKelamin;
  final String keperluan;
  final String nama;
  final String namaAyah;
  final String namaIbu;
  final String nikAyah;
  final String nikIbu;
  final String nomorSurat;
  final String organisasiId;
  final String status;
  final String tanggalLahir;
  final String tanggalLahirAyah;
  final String tanggalLahirIbu;
  final String tempatLahir;
  final String tempatLahirAyah;
  final String tempatLahirIbu;
  final String updatedAt;

  SKKelahiranDataDto({
    required this.alamat,
    required this.alamatAyah,
    required this.alamatIbu,
    required this.anakKe,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.jamLahir,
    required this.jenisKelamin,
    required this.keperluan,
    required this.nama,
    required this.namaAyah,
    required this.namaIbu,
    required this.nikAyah,
    required this.nikIbu,
    required this.nomorSurat,
    required this.organisasiId,
    required this.status,
    required this.tanggalLahir,
    required this.tanggalLahirAyah,
    required this.tanggalLahirIbu,
    required this.tempatLahir,
    required this.tempatLahirAyah,
    required this.tempatLahirIbu,
    required this.updatedAt,
  });

  factory SKKelahiranDataDto.fromJson(Map<String, dynamic> json) {
    return SKKelahiranDataDto(
      alamat: json['alamat'],
      alamatAyah: json['alamat_ayah'],
      alamatIbu: json['alamat_ibu'],
      anakKe: json['anak_ke'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      jamLahir: json['jam_lahir'],
      jenisKelamin: json['jenis_kelamin'],
      keperluan: json['keperluan'],
      nama: json['nama'],
      namaAyah: json['nama_ayah'],
      namaIbu: json['nama_ibu'],
      nikAyah: json['nik_ayah'],
      nikIbu: json['nik_ibu'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalLahirAyah: json['tanggal_lahir_ayah'],
      tanggalLahirIbu: json['tanggal_lahir_ibu'],
      tempatLahir: json['tempat_lahir'],
      tempatLahirAyah: json['tempat_lahir_ayah'],
      tempatLahirIbu: json['tempat_lahir_ibu'],
      updatedAt: json['updated_at'],
    );
  }
}
