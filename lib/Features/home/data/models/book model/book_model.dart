import 'package:bookly_app/Features/home/data/models/book%20model/access_info.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/industry_identifier.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/sale_info.dart';

class BookModel {
  final String? id;
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final String? language;
  final String? thumbnail;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;

  BookModel({
    required this.id,
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.language,
    required this.thumbnail,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
    required this.saleInfo,
    required this.accessInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'] ?? '',
      title: json['volumeInfo']['title'] ?? 'Unknown Title',
      authors: (json['volumeInfo']['authors'] != null)
          ? List<String>.from(json['volumeInfo']['authors'])
          : [],
      publisher: json['volumeInfo']['publisher'] ?? 'Unknown Publisher',
      publishedDate: json['volumeInfo']['publishedDate'] ?? 'Unknown Date',
      description: json['volumeInfo']['description'] ?? 'No description available',
      industryIdentifiers: (json['volumeInfo']['industryIdentifiers'] != null)
          ? (json['volumeInfo']['industryIdentifiers'] as List)
              .map((item) => IndustryIdentifier.fromJson(item))
              .toList()
          : [],
      pageCount: json['volumeInfo']['pageCount'] ?? 0,
      printType: json['volumeInfo']['printType'] ?? '',
      categories: (json['volumeInfo']['categories'] != null)
          ? List<String>.from(json['volumeInfo']['categories'])
          : [],
      maturityRating: json['volumeInfo']['maturityRating'] ?? '',
      language: json['volumeInfo']['language'] ?? '',
      thumbnail: (json['volumeInfo']['imageLinks'] != null)
          ? json['volumeInfo']['imageLinks']['thumbnail'] ?? ''
          : '',
      previewLink: json['volumeInfo']['previewLink'] ?? '',
      infoLink: json['volumeInfo']['infoLink'] ?? '',
      canonicalVolumeLink: json['volumeInfo']['canonicalVolumeLink'] ?? '',
      saleInfo: SaleInfo.fromJson(json['saleInfo']),
      accessInfo: AccessInfo.fromJson(json['accessInfo']),
    );
  }
}