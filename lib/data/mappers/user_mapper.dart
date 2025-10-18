import '../../domain/entities/user_entity.dart';
import '../remote/dtos/auth/login/login_response_dto.dart';

class UserMapper {
  static UserEntity fromDto(UserDataDto dto) {
    return UserEntity(
      id: dto.id,
      namaWarga: dto.namaWarga,
      nik: dto.nik,
      email: dto.email,
      alamat: dto.alamat,
      noTelp: dto.noTelp,
      isActive: dto.isActive,
      jenisKelamin: dto.jenisKelamin,
      photo: dto.photo,
      tempatLahir: dto.tempatLahir,
      tanggalLahir: dto.tanggalLahir,
      noKk: dto.noKk,
      statusHubungan: dto.statusHubungan,
    );
  }

  static UserDataDto toDto(UserEntity entity) {
    return UserDataDto(
      id: entity.id,
      namaWarga: entity.namaWarga,
      nik: entity.nik,
      email: entity.email,
      alamat: entity.alamat,
      noTelp: entity.noTelp,
      isActive: entity.isActive,
      jenisKelamin: entity.jenisKelamin,
      photo: entity.photo,
      tempatLahir: entity.tempatLahir,
      tanggalLahir: entity.tanggalLahir,
      noKk: entity.noKk,
      statusHubungan: entity.statusHubungan,
      createdAt: '',
      updatedAt: '',
    );
  }
}