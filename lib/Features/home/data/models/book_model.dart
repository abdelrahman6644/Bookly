import 'package:bookly_app/Features/home/data/models/access_info.dart';
import 'package:bookly_app/Features/home/data/models/sale_info.dart';
import 'package:bookly_app/Features/home/data/models/volume_info.dart';

class BookModel {
    String kind;
    int totalItems;
    List<Item> items;

    BookModel({
        required this.kind,
        required this.totalItems,
        required this.items,
    });

}

class Item {
    Kind kind;
    String id;
    String etag;
    String selfLink;
    VolumeInfo volumeInfo;
    SaleInfo saleInfo;
    AccessInfo accessInfo;

    Item({
        required this.kind,
        required this.id,
        required this.etag,
        required this.selfLink,
        required this.volumeInfo,
        required this.saleInfo,
        required this.accessInfo,
    });

}


enum Kind {
    BOOKS_VOLUME
}



