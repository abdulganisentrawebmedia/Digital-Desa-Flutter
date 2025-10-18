import 'meta_dto.dart';

class PendidikanResponseDto {
  final List<PendidikanDataDto> data;
  final MetaDto meta;

  PendidikanResponseDto({
    required this.data,
    required this.meta,
  });

  factory PendidikanResponseDto.fromJson(Map<String, dynamic> json) {
    return PendidikanResponseDto(
      data: (json['data'] as List)
          .map((item) => PendidikanDataDto.fromJson(item))
          .toList(),
      meta: MetaDto.fromJson(json['meta']),
    );
  }
}

class PendidikanDataDto {
  final String createdAt;
  final String? deletedAt;
  final String id;
  final String nama;
  final String updatedAt;

  PendidikanDataDto({
    required this.createdAt,
    this.deletedAt,
    required this.id,
    required this.nama,
    required this.updatedAt,
  });

  factory PendidikanDataDto.fromJson(Map<String, dynamic> json) {
    return PendidikanDataDto(
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      id: json['id'],
      nama: json['nama'],
      updatedAt: json['updated_at'],
    );
  }
}