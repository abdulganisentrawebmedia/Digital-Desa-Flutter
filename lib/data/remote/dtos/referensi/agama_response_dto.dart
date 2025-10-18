import 'meta_dto.dart';

class AgamaResponseDto {
  final List<AgamaDataDto> data;
  final MetaDto meta;

  AgamaResponseDto({
    required this.data,
    required this.meta,
  });

  factory AgamaResponseDto.fromJson(Map<String, dynamic> json) {
    return AgamaResponseDto(
      data: (json['data'] as List)
          .map((item) => AgamaDataDto.fromJson(item))
          .toList(),
      meta: MetaDto.fromJson(json['meta']),
    );
  }
}

class AgamaDataDto {
  final String createdAt;
  final String? deletedAt;
  final String id;
  final String nama;
  final String updatedAt;

  AgamaDataDto({
    required this.createdAt,
    this.deletedAt,
    required this.id,
    required this.nama,
    required this.updatedAt,
  });

  factory AgamaDataDto.fromJson(Map<String, dynamic> json) {
    return AgamaDataDto(
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      id: json['id'],
      nama: json['nama'],
      updatedAt: json['updated_at'],
    );
  }
}