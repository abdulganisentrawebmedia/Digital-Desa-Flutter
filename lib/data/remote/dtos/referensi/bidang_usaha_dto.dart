class BidangUsahaResponseDto {
  final List<BidangUsahaDataDto> data;

  BidangUsahaResponseDto({required this.data});

  factory BidangUsahaResponseDto.fromJson(Map<String, dynamic> json) {
    return BidangUsahaResponseDto(
      data: (json['data'] as List)
          .map((item) => BidangUsahaDataDto.fromJson(item))
          .toList(),
    );
  }
}

class BidangUsahaDataDto {
  final String id;
  final String nama;

  BidangUsahaDataDto({
    required this.id,
    required this.nama,
  });

  factory BidangUsahaDataDto.fromJson(Map<String, dynamic> json) {
    return BidangUsahaDataDto(
      id: json['id'],
      nama: json['nama'],
    );
  }
}