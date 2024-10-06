class SaleInfo {
  final String country;
  final String saleability;
  final bool isEbook;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'] ?? '',
      saleability: json['saleability'] ?? '',
      isEbook: json['isEbook'] ?? false,
    );
  }
}
