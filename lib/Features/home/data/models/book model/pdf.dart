
class Pdf {
    bool isAvailable;
    String? downloadLink;

    Pdf({
        required this.isAvailable,
        this.downloadLink,
    });

factory Pdf.fromJson(Map<String, dynamic> json) {
    return Pdf(
      isAvailable: json['isAvailable'] ?? false,
      downloadLink: json['isAvailable'] == false ? "" : json['downloadLink'] ?? "",
    );
  }
}