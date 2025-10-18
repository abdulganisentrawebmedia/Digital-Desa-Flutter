class SuratKuasaResponseDto {
  final SuratKuasaDataDto data;

  SuratKuasaResponseDto({required this.data});

  factory SuratKuasaResponseDto.fromJson(Map<String, dynamic> json) {
    return SuratKuasaResponseDto(
      data: SuratKuasaDataDto.fromJson(json['data']),
    );
  }
}

class SuratKuasaDataDto {
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String disposisiKuasaSebagai;
  final String disposisiKuasaUntuk;
  final String id;
  final String jabatanPemberi;
  final String jabatanPenerima;
  final String namaPemberi;
  final String namaPenerima;
  final String nikPemberi;
  final String nikPenerima;
  final String nomorSurat;
  final String organisasiId;
  final String status;
  final String updatedAt;

  SuratKuasaDataDto({
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.disposisiKuasaSebagai,
    required this.disposisiKuasaUntuk,
    required this.id,
    required this.jabatanPemberi,
    required this.jabatanPenerima,
    required this.namaPemberi,
    required this.namaPenerima,
    required this.nikPemberi,
    required this.nikPenerima,
    required this.nomorSurat,
    required this.organisasiId,
    required this.status,
    required this.updatedAt,
  });

  factory SuratKuasaDataDto.fromJson(Map<String, dynamic> json) {
    return SuratKuasaDataDto(
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      disposisiKuasaSebagai: json['disposisi_kuasa_sebagai'],
      disposisiKuasaUntuk: json['disposisi_kuasa_untuk'],
      id: json['id'],
      jabatanPemberi: json['jabatan_pemberi'],
      jabatanPenerima: json['jabatan_penerima'],
      namaPemberi: json['nama_pemberi'],
      namaPenerima: json['nama_penerima'],
      nikPemberi: json['nik_pemberi'],
      nikPenerima: json['nik_penerima'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      status: json['status'],
      updatedAt: json['updated_at'],
    );
  }
}