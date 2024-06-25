/// msg : "success"
/// data : [{"id":1,"title":"MacBook Air M1 New","short_des":"Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold","price":"50% off in all products","image":"http://photo.teamrabbil.com/images/2023/09/09/s15ab2733cb4567d3d.png","product_id":1,"created_at":"2023-08-15T08:42:46.000000Z","updated_at":"2023-09-09T10:00:21.000000Z"},{"id":3,"title":"MacBook Air M1 New","short_des":"Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold","price":"51% off in all products","image":"http://photo.teamrabbil.com/images/2023/09/09/s29b413a4aec6bec14.png","product_id":2,"created_at":"2023-08-15T08:42:46.000000Z","updated_at":"2023-09-09T10:00:24.000000Z"},{"id":4,"title":"MacBook Air M1 New","short_des":"Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold","price":"52% off in all products","image":"http://photo.teamrabbil.com/images/2023/09/09/s36372954997b5719f.png","product_id":3,"created_at":"2023-08-15T08:42:46.000000Z","updated_at":"2023-09-09T10:00:28.000000Z"}]
library;

class ProductListSlider {
  ProductListSlider({
      String? msg, 
      List<ProductListSliderData>? productSliderdata,}){
    _msg = msg;
    _data = productSliderdata;
}

  ProductListSlider.fromJson(dynamic json) {
    _msg = json['msg'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(ProductListSliderData.fromJson(v));
      });
    }
  }
  String? _msg;
  List<ProductListSliderData>? _data;
ProductListSlider copyWith({  String? msg,
  List<ProductListSliderData>? data,
}) => ProductListSlider(  msg: msg ?? _msg,
  productSliderdata: data ?? _data,
);
  String? get msg => _msg;
  List<ProductListSliderData>? get productSliderdata => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['msg'] = _msg;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// title : "MacBook Air M1 New"
/// short_des : "Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold"
/// price : "50% off in all products"
/// image : "http://photo.teamrabbil.com/images/2023/09/09/s15ab2733cb4567d3d.png"
/// product_id : 1
/// created_at : "2023-08-15T08:42:46.000000Z"
/// updated_at : "2023-09-09T10:00:21.000000Z"

class ProductListSliderData {
  ProductListSliderData({
      num? id, 
      String? title, 
      String? shortDes, 
      String? price, 
      String? image, 
      num? productId, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _title = title;
    _shortDes = shortDes;
    _price = price;
    _image = image;
    _productId = productId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  ProductListSliderData.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _shortDes = json['short_des'];
    _price = json['price'];
    _image = json['image'];
    _productId = json['product_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _title;
  String? _shortDes;
  String? _price;
  String? _image;
  num? _productId;
  String? _createdAt;
  String? _updatedAt;
ProductListSliderData copyWith({  num? id,
  String? title,
  String? shortDes,
  String? price,
  String? image,
  num? productId,
  String? createdAt,
  String? updatedAt,
}) => ProductListSliderData(  id: id ?? _id,
  title: title ?? _title,
  shortDes: shortDes ?? _shortDes,
  price: price ?? _price,
  image: image ?? _image,
  productId: productId ?? _productId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get title => _title;
  String? get shortDes => _shortDes;
  String? get price => _price;
  String? get image => _image;
  num? get productId => _productId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['short_des'] = _shortDes;
    map['price'] = _price;
    map['image'] = _image;
    map['product_id'] = _productId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}