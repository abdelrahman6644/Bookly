class Epub {
    bool isAvailable;
    String? downloadLink;

    Epub({
        required this.isAvailable,
        this.downloadLink,
    });

factory Epub.fromJson(Map<String, dynamic> json) {
    return Epub(
      isAvailable: json['isAvailable'] ?? false,
      downloadLink: json['isAvailable'] == false ? "" : json['downloadLink'] ?? "",
    );
  }
}