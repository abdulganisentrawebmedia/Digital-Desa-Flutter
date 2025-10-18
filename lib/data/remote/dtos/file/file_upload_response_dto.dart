class FileUploadResponseDto {
  final FileDataDto data;

  FileUploadResponseDto({required this.data});

  factory FileUploadResponseDto.fromJson(Map<String, dynamic> json) {
    return FileUploadResponseDto(
      data: FileDataDto.fromJson(json['data']),
    );
  }
}

class FileDataDto {
  final String id;
  final String createdAt;

  FileDataDto({
    required this.id,
    required this.createdAt,
  });

  factory FileDataDto.fromJson(Map<String, dynamic> json) {
    return FileDataDto(
      id: json['id'],
      createdAt: json['created_at'],
    );
  }
}