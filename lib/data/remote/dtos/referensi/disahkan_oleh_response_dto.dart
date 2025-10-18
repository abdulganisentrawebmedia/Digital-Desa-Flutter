class DisahkanOlehResponseDto {
  final List<DisahkanOlehDataDto> data;

  DisahkanOlehResponseDto({required this.data});

  factory DisahkanOlehResponseDto.fromJson(Map<String, dynamic> json) {
    return DisahkanOlehResponseDto(
      data: (json['data'] as List)
          .map((item) => DisahkanOlehDataDto.fromJson(item))
          .toList(),
    );
  }
}

class DisahkanOlehDataDto {
  final String id;
  final String jabatan;
  final String namaPejabat;

  DisahkanOlehDataDto({
    required this.id,
    required this.jabatan,
    required this.namaPejabat,
  });

  factory DisahkanOlehDataDto.fromJson(Map<String, dynamic> json) {
    return DisahkanOlehDataDto(
      id: json['id'],
      jabatan: json['jabatan'],
      namaPejabat: json['nama_pejabat'],
    );
  }
}
