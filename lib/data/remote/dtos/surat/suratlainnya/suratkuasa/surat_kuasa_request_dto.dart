class SuratKuasaRequestDto {
  final String disahkanOleh;
  final String disposisiKuasaSebagai;
  final String disposisiKuasaUntuk;
  final String jabatanPemberi;
  final String jabatanPenerima;
  final String namaPemberi;
  final String namaPenerima;
  final String nikPemberi;
  final String nikPenerima;

  SuratKuasaRequestDto({
    required this.disahkanOleh,
    required this.disposisiKuasaSebagai,
    required this.disposisiKuasaUntuk,
    required this.jabatanPemberi,
    required this.jabatanPenerima,
    required this.namaPemberi,
    required this.namaPenerima,
    required this.nikPemberi,
    required this.nikPenerima,
  });

  Map<String, dynamic> toJson() => {
    'disahkan_oleh': disahkanOleh,
    'disposisi_kuasa_sebagai': disposisiKuasaSebagai,
    'disposisi_kuasa_untuk': disposisiKuasaUntuk,
    'jabatan_pemberi': jabatanPemberi,
    'jabatan_penerima': jabatanPenerima,
    'nama_pemberi': namaPemberi,
    'nama_penerima': namaPenerima,
    'nik_pemberi': nikPemberi,
    'nik_penerima': nikPenerima,
  };
}