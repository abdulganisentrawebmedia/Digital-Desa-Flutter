class MetaDto {
  final int total;

  MetaDto({required this.total});

  factory MetaDto.fromJson(Map<String, dynamic> json) {
    return MetaDto(total: json['total']);
  }
}