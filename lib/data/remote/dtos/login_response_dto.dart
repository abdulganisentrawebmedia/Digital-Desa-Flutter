class LoginResponseDto {
  final String token;
  final UserDto user;

  LoginResponseDto({
    required this.token,
    required this.user,
  });

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) {
    return LoginResponseDto(
      token: json['token'] ?? '',
      user: UserDto.fromJson(json['data']),
    );
  }
}

class UserDto {
  final String id;
  final String namaWarga;
  final String nik;
  final String email;
  final String? alamat;
  final String? noTelp;
  final bool isActive;
  final String jenisKelamin;
  final String? agamaId;
  final DateTime? tanggalLahir;
  final String? tempatLahir;
  final String? pendidikanId;
  final String? pekerjaanId;
  final String? sukuId;
  final String? statusKawinId;
  final String? kewarganegaraan;
  final String? golonganDarah;
  final String? disabilitasId;
  final String? noKk;
  final String? statusHubungan;
  final String? photo;
  final String? noPaspor;
  final String? noKitap;
  final String? namaAyah;
  final String? namaIbu;
  final DateTime? tanggalPerkawinan;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  UserDto({
    required this.id,
    required this.namaWarga,
    required this.nik,
    required this.email,
    this.alamat,
    this.noTelp,
    required this.isActive,
    required this.jenisKelamin,
    this.agamaId,
    this.tanggalLahir,
    this.tempatLahir,
    this.pendidikanId,
    this.pekerjaanId,
    this.sukuId,
    this.statusKawinId,
    this.kewarganegaraan,
    this.golonganDarah,
    this.disabilitasId,
    this.noKk,
    this.statusHubungan,
    this.photo,
    this.noPaspor,
    this.noKitap,
    this.namaAyah,
    this.namaIbu,
    this.tanggalPerkawinan,
    this.createdAt,
    this.updatedAt,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      id: json['id'].toString(),
      namaWarga: json['nama_warga'] ?? '',
      nik: json['nik'] ?? '',
      email: json['email'] ?? '',
      alamat: json['alamat'],
      noTelp: json['no_telp'],
      isActive: json['is_active'] ?? false,
      jenisKelamin: json['jenis_kelamin'] ?? '',
      agamaId: json['agama_id'],
      tanggalLahir: json['tanggal_lahir'] != null
          ? DateTime.tryParse(json['tanggal_lahir'])
          : null,
      tempatLahir: json['tempat_lahir'],
      pendidikanId: json['pendidikan_id'],
      pekerjaanId: json['pekerjaan_id'],
      sukuId: json['suku_id'],
      statusKawinId: json['status_kawin_id'],
      kewarganegaraan: json['kewarganegaraan'],
      golonganDarah: json['golongan_darah'],
      disabilitasId: json['disabilitas_id'],
      noKk: json['no_kk'],
      statusHubungan: json['status_hubungan'],
      photo: json['photo'],
      noPaspor: json['no_paspor'],
      noKitap: json['no_kitap'],
      namaAyah: json['nama_ayah'],
      namaIbu: json['nama_ibu'],
      tanggalPerkawinan: json['tanggal_perkawinan'] != null
          ? DateTime.tryParse(json['tanggal_perkawinan'])
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.tryParse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.tryParse(json['updated_at'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama_warga': namaWarga,
      'nik': nik,
      'email': email,
      'alamat': alamat,
      'no_telp': noTelp,
      'is_active': isActive,
      'jenis_kelamin': jenisKelamin,
      'agama_id': agamaId,
      'tanggal_lahir': tanggalLahir?.toIso8601String(),
      'tempat_lahir': tempatLahir,
      'pendidikan_id': pendidikanId,
      'pekerjaan_id': pekerjaanId,
      'suku_id': sukuId,
      'status_kawin_id': statusKawinId,
      'kewarganegaraan': kewarganegaraan,
      'golongan_darah': golonganDarah,
      'disabilitas_id': disabilitasId,
      'no_kk': noKk,
      'status_hubungan': statusHubungan,
      'photo': photo,
      'no_paspor': noPaspor,
      'no_kitap': noKitap,
      'nama_ayah': namaAyah,
      'nama_ibu': namaIbu,
      'tanggal_perkawinan': tanggalPerkawinan?.toIso8601String(),
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}