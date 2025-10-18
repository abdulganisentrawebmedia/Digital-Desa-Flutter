import 'meta_dto.dart';

class TercantumIdentitasResponseDto {
  final List<TercantumIdentitasDataDto> data;
  final MetaDto meta;

  TercantumIdentitasResponseDto({
    required this.data,
    required this.meta,
  });

  factory TercantumIdentitasResponseDto.fromJson(Map<String, dynamic> json) {
    return TercantumIdentitasResponseDto(
      data: (json['data'] as List)
          .map((item) => TercantumIdentitasDataDto.fromJson(item))
          .toList(),
      meta: MetaDto.fromJson(json['meta']),
    );
  }
}

class TercantumIdentitasDataDto {
  final String createdAt;
  final String? deletedAt;
  final String id;
  final String nama;
  final String updatedAt;

  TercantumIdentitasDataDto({
    required this.createdAt,
    this.deletedAt,
    required this.id,
    required this.nama,
    required this.updatedAt,
  });

  factory TercantumIdentitasDataDto.fromJson(Map<String, dynamic> json) {
    return TercantumIdentitasDataDto(
      createdAt: json['created_at'] as String,
      deletedAt: json['deleted_at'] as String?,
      id: json['id'] as String,
      nama: json['nama'] as String,
      updatedAt: json['updated_at'] as String,
    );
  }
}
