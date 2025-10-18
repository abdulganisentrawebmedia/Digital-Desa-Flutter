import 'meta_dto.dart';

class HubunganResponseDto {
  final List<HubunganDataDto> data;
  final MetaDto meta;

  HubunganResponseDto({
    required this.data,
    required this.meta,
  });

  factory HubunganResponseDto.fromJson(Map<String, dynamic> json) {
    return HubunganResponseDto(
      data: (json['data'] as List)
          .map((item) => HubunganDataDto.fromJson(item))
          .toList(),
      meta: MetaDto.fromJson(json['meta']),
    );
  }
}

class HubunganDataDto {
  final String createdAt;
  final String? deletedAt;
  final String id;
  final String nama;
  final String updatedAt;

  HubunganDataDto({
    required this.createdAt,
    this.deletedAt,
    required this.id,
    required this.nama,
    required this.updatedAt,
  });

  factory HubunganDataDto.fromJson(Map<String, dynamic> json) {
    return HubunganDataDto(
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      id: json['id'],
      nama: json['nama'],
      updatedAt: json['updated_at'],
    );
  }
}
