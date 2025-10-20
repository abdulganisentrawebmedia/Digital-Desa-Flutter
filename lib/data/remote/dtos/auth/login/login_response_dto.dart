class LoginResponseDto {
  final UserDataDto data;
  final String token;

  LoginResponseDto({
    required this.data,
    required this.token,
  });

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) {
    return LoginResponseDto(
      data: UserDataDto.fromJson(json['data']),
      token: json['token'],
    );
  }
}

class UserDataDto {
  final String id;
  final String namaWarga;
  final String email;
  final String nik;
  final String? noKk;
  final String? noTelp;
  final String? alamat;
  final String jenisKelamin;
  final String? tempatLahir;
  final String? tanggalLahir;
  final String? agamaId;
  final String? pendidikanId;
  final String? pekerjaanId;
  final String? sukuId;
  final String? statusHubungan;
  final String? statusKawinId;
  final String? kewarganegaraan;
  final String? golonganDarah;
  final String? disabilitasId;
  final String? photo;
  final bool isActive;
  final String createdAt;
  final String updatedAt;
  final String? deletedAt;
  final String? noPaspor;
  final String? noKitap;
  final String? namaAyah;
  final String? namaIbu;
  final String? tanggalPerkawinan;
  final String? verifiedAt;
  final String? verifiedBy;

  UserDataDto({
    required this.id,
    required this.namaWarga,
    required this.email,
    required this.nik,
    required this.noKk,
    this.noTelp,
    required this.alamat,
    required this.jenisKelamin,
    required this.tempatLahir,
    required this.tanggalLahir,
    this.agamaId,
    this.pendidikanId,
    this.pekerjaanId,
    this.sukuId,
    this.statusHubungan,
    this.statusKawinId,
    this.kewarganegaraan,
    this.golonganDarah,
    this.disabilitasId,
    this.photo,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    this.noPaspor,
    this.noKitap,
    this.namaAyah,
    this.namaIbu,
    this.tanggalPerkawinan,
    this.verifiedAt,
    this.verifiedBy,
  });

  factory UserDataDto.fromJson(Map<String, dynamic> json) {
    return UserDataDto(
      id: json['id'],
      namaWarga: json['nama_warga'],
      email: json['email'],
      nik: json['nik'],
      noKk: json['no_kk'],
      noTelp: json['no_telp'],
      alamat: json['alamat'],
      jenisKelamin: json['jenis_kelamin'],
      tempatLahir: json['tempat_lahir'],
      tanggalLahir: json['tanggal_lahir'],
      agamaId: json['agama_id'],
      pendidikanId: json['pendidikan_id'],
      pekerjaanId: json['pekerjaan_id'],
      sukuId: json['suku_id'],
      statusHubungan: json['status_hubungan'],
      statusKawinId: json['status_kawin_id'],
      kewarganegaraan: json['kewarganegaraan'],
      golonganDarah: json['golongan_darah'],
      disabilitasId: json['disabilitas_id'],
      photo: json['photo'],
      isActive: json['is_active'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
      noPaspor: json['no_paspor'],
      noKitap: json['no_kitap'],
      namaAyah: json['nama_ayah'],
      namaIbu: json['nama_ibu'],
      tanggalPerkawinan: json['tanggal_perkawinan'],
      verifiedAt: json['verified_at'],
      verifiedBy: json['verified_by'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama_warga': namaWarga,
      'email': email,
      'nik': nik,
      'no_kk': noKk,
      'no_telp': noTelp,
      'alamat': alamat,
      'jenis_kelamin': jenisKelamin,
      'tempat_lahir': tempatLahir,
      'tanggal_lahir': tanggalLahir,
      'agama_id': agamaId,
      'pendidikan_id': pendidikanId,
      'pekerjaan_id': pekerjaanId,
      'suku_id': sukuId,
      'status_hubungan': statusHubungan,
      'status_kawin_id': statusKawinId,
      'kewarganegaraan': kewarganegaraan,
      'golongan_darah': golonganDarah,
      'disabilitas_id': disabilitasId,
      'photo': photo,
      'is_active': isActive,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
      'no_paspor': noPaspor,
      'no_kitap': noKitap,
      'nama_ayah': namaAyah,
      'nama_ibu': namaIbu,
      'tanggal_perkawinan': tanggalPerkawinan,
      'verified_at': verifiedAt,
      'verified_by': verifiedBy,
    };
  }
}