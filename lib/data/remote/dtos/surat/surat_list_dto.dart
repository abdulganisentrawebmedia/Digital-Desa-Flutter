class SuratListResponseDto {
  final List<SuratListDataDto> data;
  final SuratListMetaDto meta;

  SuratListResponseDto({
    required this.data,
    required this.meta,
  });

  factory SuratListResponseDto.fromJson(Map<String, dynamic> json) {
    return SuratListResponseDto(
      data: (json['data'] as List)
          .map((item) => SuratListDataDto.fromJson(item))
          .toList(),
      meta: SuratListMetaDto.fromJson(json['meta']),
    );
  }
}

class SuratListDataDto {
  final String createdAt;
  final String diprosesOlehId;
  final String disahkanOlehId;
  final String id;
  final String jenisSurat;
  final String nama;
  final String nik;
  final String status;

  SuratListDataDto({
    required this.createdAt,
    required this.diprosesOlehId,
    required this.disahkanOlehId,
    required this.id,
    required this.jenisSurat,
    required this.nama,
    required this.nik,
    required this.status,
  });

  factory SuratListDataDto.fromJson(Map<String, dynamic> json) {
    return SuratListDataDto(
      createdAt: json['created_at'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      jenisSurat: json['jenis_surat'],
      nama: json['nama'],
      nik: json['nik'],
      status: json['status'],
    );
  }
}

class SuratListMetaDto {
  final String endDate;
  final String jenisSurat;
  final int limit;
  final int page;
  final String search;
  final String startDate;
  final String status;
  final int total;

  SuratListMetaDto({
    required this.endDate,
    required this.jenisSurat,
    required this.limit,
    required this.page,
    required this.search,
    required this.startDate,
    required this.status,
    required this.total,
  });

  factory SuratListMetaDto.fromJson(Map<String, dynamic> json) {
    return SuratListMetaDto(
      endDate: json['end_date'],
      jenisSurat: json['jenis_surat'],
      limit: json['limit'],
      page: json['page'],
      search: json['search'],
      startDate: json['start_date'],
      status: json['status'],
      total: json['total'],
    );
  }
}