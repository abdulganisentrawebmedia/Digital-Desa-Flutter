import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String namaWarga;
  final String nik;
  final String email;
  final String? alamat;
  final String? noTelp;
  final bool isActive;
  final String jenisKelamin;
  final String? photo;
  final String? tempatLahir;
  final DateTime? tanggalLahir;
  final String? noKk;
  final String? statusHubungan;

  const UserEntity({
    required this.id,
    required this.namaWarga,
    required this.nik,
    required this.email,
    this.alamat,
    this.noTelp,
    required this.isActive,
    required this.jenisKelamin,
    this.photo,
    this.tempatLahir,
    this.tanggalLahir,
    this.noKk,
    this.statusHubungan,
  });

  @override
  List<Object?> get props => [
    id,
    namaWarga,
    nik,
    email,
    alamat,
    noTelp,
    isActive,
    jenisKelamin,
    photo,
    tempatLahir,
    tanggalLahir,
    noKk,
    statusHubungan,
  ];
}