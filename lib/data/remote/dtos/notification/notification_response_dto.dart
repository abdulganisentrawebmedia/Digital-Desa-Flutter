class NotificationResponseDto {
  final List<NotificationDataDto> data;

  NotificationResponseDto({required this.data});

  factory NotificationResponseDto.fromJson(Map<String, dynamic> json) {
    return NotificationResponseDto(
      data: (json['data'] as List)
          .map((item) => NotificationDataDto.fromJson(item))
          .toList(),
    );
  }
}

class NotificationDataDto {
  final String createdAt;
  final String? deletedAt;
  final String id;
  final String jenisSurat;
  final String message;
  final String suratId;
  final String title;
  final String updatedAt;
  final String wargaId;

  NotificationDataDto({
    required this.createdAt,
    this.deletedAt,
    required this.id,
    required this.jenisSurat,
    required this.message,
    required this.suratId,
    required this.title,
    required this.updatedAt,
    required this.wargaId,
  });

  factory NotificationDataDto.fromJson(Map<String, dynamic> json) {
    return NotificationDataDto(
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      id: json['id'],
      jenisSurat: json['jenis_surat'],
      message: json['message'],
      suratId: json['surat_id'],
      title: json['title'],
      updatedAt: json['updated_at'],
      wargaId: json['warga_id'],
    );
  }

// You can add toEntity method if you have NotificationEntity class
// NotificationEntity toEntity() {
//   return NotificationEntity(
//     id: id,
//     title: title,
//     message: message,
//     jenisSurat: jenisSurat,
//     suratId: suratId,
//     wargaId: wargaId,
//     createdAt: createdAt,
//     updatedAt: updatedAt,
//     deletedAt: deletedAt ?? '',
//   );
// }
}