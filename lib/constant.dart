import 'dart:ui';

import 'package:bookly_app/Features/home/data/models/book%20model/access_info.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/epub.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/pdf.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/sale_info.dart';

const kPrimaryColor = Color(0xff100B20);
const kTranstionDuration = Duration(milliseconds: 250);
const kGtSectraFine = 'GT Sectra Fine';
const apiKey = "AIzaSyBrIEV23x4mNiIrV7v_RKvwbJyIpwLGdgU";

BookModel testBookModel = BookModel(
    id: '',
    title:'',
    authors: [],
    publisher: '',
    publishedDate: '',
    description: '',
    industryIdentifiers: [],
    pageCount:12,
    printType: '',
    categories:[],
    maturityRating: '',
    language: '',
    thumbnail: '',
    previewLink:'',
    infoLink: '',
    canonicalVolumeLink:'',
    saleInfo: SaleInfo(country: '', saleability:'', isEbook: true) ,
    accessInfo:AccessInfo(country: '', viewability: '', embeddable: true, publicDomain: true, textToSpeechPermission: '', epub: Epub(isAvailable: true), pdf:Pdf(isAvailable: true), webReaderLink:'' , accessViewStatus:'' , quoteSharingAllowed: true));
