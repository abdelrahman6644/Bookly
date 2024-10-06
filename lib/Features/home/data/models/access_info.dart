import 'package:bookly_app/Features/home/data/models/epub.dart';

class AccessInfo {
    Country country;
    Viewability viewability;
    bool embeddable;
    bool publicDomain;
    TextToSpeechPermission textToSpeechPermission;
    Epub epub;
    Epub pdf;
    String webReaderLink;
    AccessViewStatus accessViewStatus;
    bool quoteSharingAllowed;

    AccessInfo({
        required this.country,
        required this.viewability,
        required this.embeddable,
        required this.publicDomain,
        required this.textToSpeechPermission,
        required this.epub,
        required this.pdf,
        required this.webReaderLink,
        required this.accessViewStatus,
        required this.quoteSharingAllowed,
    });

}
enum Country {
    EG
}
enum AccessViewStatus {
    FULL_PUBLIC_DOMAIN
}
enum TextToSpeechPermission {
    ALLOWED
}

enum Viewability {
    ALL_PAGES
}
