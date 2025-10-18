class UserInfoResponseDto {
  final UserInfoDataDto data;

  UserInfoResponseDto({required this.data});

  factory UserInfoResponseDto.fromJson(Map<String, dynamic> json) {
    return UserInfoResponseDto(
      data: UserInfoDataDto.fromJson(json['data']),
    );
  }
}

class UserInfoDataDto {
  final String agama;
  final String agamaId;
  final String alamat;
  final String createdAt;
  final String? deletedAt;
  final String? disabilitasId;
  final String dusun;
  final String email;
  final String golonganDarah;
  final String id;
  final bool isActive;
  final String jenisKelamin;
  final String kewarganegaraan;
  final String namaWarga;
  final String nik;
  final String noKk;
  final String noTelp;
  final String pekerjaan;
  final String? pekerjaanId;
  final String pendidikan;
  final String? pendidikanId;
  final String? photo;
  final String rt;
  final String rw;
  final String statusHubungan;
  final String statusKawin;
  final String? statusKawinId;
  final String tanggalLahir;
  final String tempatLahir;
  final String updatedAt;

  UserInfoDataDto({
    required this.agama,
    required this.agamaId,
    required this.alamat,
    required this.createdAt,
    this.deletedAt,
    this.disabilitasId,
    required this.dusun,
    required this.email,
    required this.golonganDarah,
    required this.id,
    required this.isActive,
    required this.jenisKelamin,
    required this.kewarganegaraan,
    required this.namaWarga,
    required this.nik,
    required this.noKk,
    required this.noTelp,
    required this.pekerjaan,
    this.pekerjaanId,
    required this.pendidikan,
    this.pendidikanId,
    this.photo,
    required this.rt,
    required this.rw,
    required this.statusHubungan,
    required this.statusKawin,
    this.statusKawinId,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.updatedAt,
  });

  factory UserInfoDataDto.fromJson(Map<String, dynamic> json) {
    return UserInfoDataDto(
      agama: json['agama'],
      agamaId: json['agama_id'],
      alamat: json['alamat'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      disabilitasId: json['disabilitas_id'],
      dusun: json['dusun'],
      email: json['email'],
      golonganDarah: json['golongan_darah'],
      id: json['id'],
      isActive: json['is_active'],
      jenisKelamin: json['jenis_kelamin'],
      kewarganegaraan: json['kewarganegaraan'],
      namaWarga: json['nama_warga'],
      nik: json['nik'],
      noKk: json['no_kk'],
      noTelp: json['no_telp'],
      pekerjaan: json['pekerjaan'],
      pekerjaanId: json['pekerjaan_id'],
      pendidikan: json['pendidikan'],
      pendidikanId: json['pendidikan_id'],
      photo: json['photo'],
      rt: json['rt'],
      rw: json['rw'],
      statusHubungan: json['status_hubungan'],
      statusKawin: json['status_kawin'],
      statusKawinId: json['status_kawin_id'],
      tanggalLahir: json['tanggal_lahir'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
    );
  }

// You can add toEntity method if you have UserEntity class
// UserEntity toEntity() {
//   return UserEntity(...);
// }
}