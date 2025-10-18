import 'meta_dto.dart';

class DisabilitasResponseDto {
  final List<DisabilitasDataDto> data;
  final MetaDto meta;

  DisabilitasResponseDto({
    required this.data,
    required this.meta,
  });

  factory DisabilitasResponseDto.fromJson(Map<String, dynamic> json) {
    return DisabilitasResponseDto(
      data: (json['data'] as List)
          .map((item) => DisabilitasDataDto.fromJson(item))
          .toList(),
      meta: MetaDto.fromJson(json['meta']),
    );
  }
}

class DisabilitasDataDto {
  final String createdAt;
  final String? deletedAt;
  final String id;
  final String nama;
  final String updatedAt;

  DisabilitasDataDto({
    required this.createdAt,
    this.deletedAt,
    required this.id,
    required this.nama,
    required this.updatedAt,
  });

  factory DisabilitasDataDto.fromJson(Map<String, dynamic> json) {
    return DisabilitasDataDto(
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      id: json['id'],
      nama: json['nama'],
      updatedAt: json['updated_at'],
    );
  }
}