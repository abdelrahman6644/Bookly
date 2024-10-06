class SaleInfo {
    Country country;
    Saleability saleability;
    bool isEbook;
    String buyLink;

    SaleInfo({
        required this.country,
        required this.saleability,
        required this.isEbook,
        required this.buyLink,
    });

}
enum Country {
    EG
}
enum Saleability {
    FREE
}

