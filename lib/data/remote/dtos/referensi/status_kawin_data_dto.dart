import 'meta_dto.dart';

class StatusKawinResponseDto {
  final List<StatusKawinDataDto> data;
  final MetaDto meta;

  StatusKawinResponseDto({
    required this.data,
    required this.meta,
  });

  factory StatusKawinResponseDto.fromJson(Map<String, dynamic> json) {
    return StatusKawinResponseDto(
      data: (json['data'] as List)
          .map((item) => StatusKawinDataDto.fromJson(item))
          .toList(),
      meta: MetaDto.fromJson(json['meta']),
    );
  }
}

class StatusKawinDataDto {
  final String createdAt;
  final String? deletedAt;
  final String id;
  final String nama;
  final String updatedAt;

  StatusKawinDataDto({
    required this.createdAt,
    this.deletedAt,
    required this.id,
    required this.nama,
    required this.updatedAt,
  });

  factory StatusKawinDataDto.fromJson(Map<String, dynamic> json) {
    return StatusKawinDataDto(
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      id: json['id'],
      nama: json['nama'],
      updatedAt: json['updated_at'],
    );
  }
}