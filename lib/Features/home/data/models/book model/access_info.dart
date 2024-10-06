import 'package:bookly_app/Features/home/data/models/book%20model/epub.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/pdf.dart';

class AccessInfo {
  Country country;
  Viewability viewability;
  bool embeddable;
  bool publicDomain;
  TextToSpeechPermission textToSpeechPermission;
  Epub epub;
  Pdf pdf;
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
  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'] ?? '',
      viewability: json['viewability'] ?? '',
      embeddable: json['embeddable'] ?? false,
      publicDomain: json['publicDomain'] ?? false,
      textToSpeechPermission: json['textToSpeechPermission'] ?? '',
      epub: Epub.fromJson(json['epub']),
      pdf: Pdf.fromJson(json['pdf']),
      webReaderLink: json['webReaderLink'] ?? '',
      accessViewStatus: json['accessViewStatus'] ?? '',
      quoteSharingAllowed: json["quoteSharingAllowed"],
    );
  }
}

enum Country { EG }

enum AccessViewStatus { FULL_PUBLIC_DOMAIN }

enum TextToSpeechPermission { ALLOWED }

enum Viewability { ALL_PAGES }
