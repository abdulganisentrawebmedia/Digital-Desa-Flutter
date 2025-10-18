import 'meta_dto.dart';

class PerbedaanIdentitasResponseDto {
  final List<PerbedaanIdentitasDataDto> data;
  final MetaDto meta;

  PerbedaanIdentitasResponseDto({
    required this.data,
    required this.meta,
  });

  factory PerbedaanIdentitasResponseDto.fromJson(Map<String, dynamic> json) {
    return PerbedaanIdentitasResponseDto(
      data: (json['data'] as List)
          .map((item) => PerbedaanIdentitasDataDto.fromJson(item))
          .toList(),
      meta: MetaDto.fromJson(json['meta']),
    );
  }
}

class PerbedaanIdentitasDataDto {
  final String createdAt;
  final String? deletedAt;
  final String id;
  final String nama;
  final String updatedAt;

  PerbedaanIdentitasDataDto({
    required this.createdAt,
    this.deletedAt,
    required this.id,
    required this.nama,
    required this.updatedAt,
  });

  factory PerbedaanIdentitasDataDto.fromJson(Map<String, dynamic> json) {
    return PerbedaanIdentitasDataDto(
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      id: json['id'],
      nama: json['nama'],
      updatedAt: json['updated_at'],
    );
  }
}
