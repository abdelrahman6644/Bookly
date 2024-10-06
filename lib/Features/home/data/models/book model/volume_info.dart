import 'package:bookly_app/Features/home/data/models/book%20model/image_links.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/panelization_summary.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/reading_modes.dart';
import 'package:bookly_app/Features/home/data/models/industry_identifier.dart';

class VolumeInfo {
    String title;
    String? subtitle;
    List<String>? authors;
    String publishedDate;
    List<IndustryIdentifier> industryIdentifiers;
    ReadingModes readingModes;
    int pageCount;
    PrintType printType;
    List<String>? categories;
    MaturityRating maturityRating;
    bool allowAnonLogging;
    String contentVersion;
    PanelizationSummary panelizationSummary;
    ImageLinks imageLinks;
    Language language;
    String previewLink;
    String infoLink;
    String canonicalVolumeLink;

    VolumeInfo({
        required this.title,
        this.subtitle,
        this.authors,
        required this.publishedDate,
        required this.industryIdentifiers,
        required this.readingModes,
        required this.pageCount,
        required this.printType,
        this.categories,
        required this.maturityRating,
        required this.allowAnonLogging,
        required this.contentVersion,
        required this.panelizationSummary,
        required this.imageLinks,
        required this.language,
        required this.previewLink,
        required this.infoLink,
        required this.canonicalVolumeLink,
    });

}
enum Language {
    EN
}

enum MaturityRating {
    NOT_MATURE
}



enum PrintType {
    BOOK
}
