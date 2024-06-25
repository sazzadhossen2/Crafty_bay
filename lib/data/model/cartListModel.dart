/// msg : "success"
/// data : [{"id":867,"user_id":205,"product_id":1,"color":"Red","size":"X","qty":"5","price":"470000","created_at":"2024-03-13T17:10:08.000000Z","updated_at":"2024-06-24T07:27:52.000000Z","product":{"id":1,"title":"MacBook Air M1 8/256GB","short_des":"MacBook Air M1 8/256GB 13-inch Space Gray","price":"94000","discount":0,"discount_price":"0","image":"https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg","stock":1,"star":80,"remark":"new","category_id":1,"brand_id":1,"created_at":"2023-08-15T08:24:06.000000Z","updated_at":"2023-09-09T17:07:51.000000Z"}},{"id":905,"user_id":205,"product_id":2,"color":"Green","size":"2X","qty":"1","price":"94000","created_at":"2024-04-06T17:15:01.000000Z","updated_at":"2024-04-06T17:15:01.000000Z","product":{"id":2,"title":"MacBook Air M1 8/256GB","short_des":"MacBook Air M1 8/256GB 13-inch Space Gray","price":"94000","discount":0,"discount_price":"0","image":"https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg","stock":1,"star":80,"remark":"new","category_id":1,"brand_id":1,"created_at":"2023-08-15T08:24:06.000000Z","updated_at":"2023-09-09T17:07:51.000000Z"}},{"id":911,"user_id":205,"product_id":9,"color":"Green","size":"3X","qty":"2","price":"188000","created_at":"2024-04-28T04:20:06.000000Z","updated_at":"2024-06-24T08:33:34.000000Z","product":{"id":9,"title":"MacBook Air M1 8/256GB","short_des":"MacBook Air M1 8/256GB 13-inch Space Gray","price":"94000","discount":0,"discount_price":"0","image":"https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg","stock":1,"star":80,"remark":"popular","category_id":1,"brand_id":1,"created_at":"2023-08-15T08:24:06.000000Z","updated_at":"2023-09-09T17:07:51.000000Z"}},{"id":912,"user_id":205,"product_id":6,"color":"Read","size":"X","qty":"1","price":"94000","created_at":"2024-04-28T04:46:28.000000Z","updated_at":"2024-04-28T04:46:28.000000Z","product":{"id":6,"title":"MacBook Air M1 8/256GB","short_des":"MacBook Air M1 8/256GB 13-inch Space Gray","price":"94000","discount":0,"discount_price":"0","image":"https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg","stock":1,"star":80,"remark":"regular","category_id":1,"brand_id":1,"created_at":"2023-08-15T08:24:06.000000Z","updated_at":"2023-09-09T17:07:51.000000Z"}}]
library;

class CartListModel {
  CartListModel({
      String? msg, 
      List<CartData>? cartdata,}){
    _msg = msg;
    _data = cartdata;
}

  CartListModel.fromJson(dynamic json) {
    _msg = json['msg'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(CartData.fromJson(v));
      });
    }
  }
  String? _msg;
  List<CartData>? _data;
CartListModel copyWith({  String? msg,
  List<CartData>? data,
}) => CartListModel(  msg: msg ?? _msg,
  cartdata: data ?? _data,
);
  String? get msg => _msg;
  List<CartData>? get cartdata => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['msg'] = _msg;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 867
/// user_id : 205
/// product_id : 1
/// color : "Red"
/// size : "X"
/// qty : "5"
/// price : "470000"
/// created_at : "2024-03-13T17:10:08.000000Z"
/// updated_at : "2024-06-24T07:27:52.000000Z"
/// product : {"id":1,"title":"MacBook Air M1 8/256GB","short_des":"MacBook Air M1 8/256GB 13-inch Space Gray","price":"94000","discount":0,"discount_price":"0","image":"https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg","stock":1,"star":80,"remark":"new","category_id":1,"brand_id":1,"created_at":"2023-08-15T08:24:06.000000Z","updated_at":"2023-09-09T17:07:51.000000Z"}

class CartData {
  final int? _id;
  final num? _userId;
  final num? _productId;
  final String? _color;
  final String? _size;
  final dynamic _qty;
  final String? _price;
  final String? _createdAt;
  final String? _updatedAt;
  final Product? _product;
  final int _quantity;

  CartData({
    int? id,
    num? userId,
    num? productId,
    String? color,
    String? size,
    dynamic qty,
    String? price,
    String? createdAt,
    String? updatedAt,
    Product? product,
    int quantity = 1,
  })  : _id = id,
        _userId = userId,
        _productId = productId,
        _color = color,
        _size = size,
        _qty = qty,
        _price = price,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _product = product,
        _quantity = quantity;

  CartData.fromJson(dynamic json)
      : _id = json['id'],
        _userId = json['user_id'],
        _productId = json['product_id'],
        _color = json['color'],
        _size = json['size'],
        _qty = json['qty'],
        _price = json['price'],
        _createdAt = json['created_at'],
        _updatedAt = json['updated_at'],
        _product = json['product'] != null ? Product.fromJson(json['product']) : null,
        _quantity = json['quantity'] ?? 1;

  CartData copyWith({
    int? id,
    num? userId,
    num? productId,
    String? color,
    String? size,
    dynamic qty,
    String? price,
    String? createdAt,
    String? updatedAt,
    Product? product,
    int? quantity,
  }) {
    return CartData(
      id: id ?? _id,
      userId: userId ?? _userId,
      productId: productId ?? _productId,
      color: color ?? _color,
      size: size ?? _size,
      qty: qty ?? _qty,
      price: price ?? _price,
      createdAt: createdAt ?? _createdAt,
      updatedAt: updatedAt ?? _updatedAt,
      product: product ?? _product,
      quantity: quantity ?? _quantity,
    );
  }

  int? get id => _id;
  num? get userId => _userId;
  num? get productId => _productId;
  String? get color => _color;
  String? get size => _size;
  dynamic get qty => _qty;
  String? get price => _price;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Product? get product => _product;
  int get quantity => _quantity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['product_id'] = _productId;
    map['color'] = _color;
    map['size'] = _size;
    map['qty'] = _qty;
    map['price'] = _price;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['quantity'] = _quantity;
    if (_product != null) {
      map['product'] = _product.toJson();
    }
    return map;
  }
}


/// id : 1
/// title : "MacBook Air M1 8/256GB"
/// short_des : "MacBook Air M1 8/256GB 13-inch Space Gray"
/// price : "94000"
/// discount : 0
/// discount_price : "0"
/// image : "https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg"
/// stock : 1
/// star : 80
/// remark : "new"
/// category_id : 1
/// brand_id : 1
/// created_at : "2023-08-15T08:24:06.000000Z"
/// updated_at : "2023-09-09T17:07:51.000000Z"

class Product {
  Product({
      num? id, 
      String? title, 
      String? shortDes, 
      String? price, 
      num? discount, 
      String? discountPrice, 
      String? image, 
      num? stock, 
      num? star, 
      String? remark, 
      num? categoryId, 
      num? brandId, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _title = title;
    _shortDes = shortDes;
    _price = price;
    _discount = discount;
    _discountPrice = discountPrice;
    _image = image;
    _stock = stock;
    _star = star;
    _remark = remark;
    _categoryId = categoryId;
    _brandId = brandId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Product.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _shortDes = json['short_des'];
    _price = json['price'];
    _discount = json['discount'];
    _discountPrice = json['discount_price'];
    _image = json['image'];
    _stock = json['stock'];
    _star = json['star'];
    _remark = json['remark'];
    _categoryId = json['category_id'];
    _brandId = json['brand_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _title;
  String? _shortDes;
  String? _price;
  num? _discount;
  String? _discountPrice;
  String? _image;
  num? _stock;
  num? _star;
  String? _remark;
  num? _categoryId;
  num? _brandId;
  String? _createdAt;
  String? _updatedAt;
Product copyWith({  num? id,
  String? title,
  String? shortDes,
  String? price,
  num? discount,
  String? discountPrice,
  String? image,
  num? stock,
  num? star,
  String? remark,
  num? categoryId,
  num? brandId,
  String? createdAt,
  String? updatedAt,
}) => Product(  id: id ?? _id,
  title: title ?? _title,
  shortDes: shortDes ?? _shortDes,
  price: price ?? _price,
  discount: discount ?? _discount,
  discountPrice: discountPrice ?? _discountPrice,
  image: image ?? _image,
  stock: stock ?? _stock,
  star: star ?? _star,
  remark: remark ?? _remark,
  categoryId: categoryId ?? _categoryId,
  brandId: brandId ?? _brandId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get title => _title;
  String? get shortDes => _shortDes;
  String? get price => _price;
  num? get discount => _discount;
  String? get discountPrice => _discountPrice;
  String? get image => _image;
  num? get stock => _stock;
  num? get star => _star;
  String? get remark => _remark;
  num? get categoryId => _categoryId;
  num? get brandId => _brandId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['short_des'] = _shortDes;
    map['price'] = _price;
    map['discount'] = _discount;
    map['discount_price'] = _discountPrice;
    map['image'] = _image;
    map['stock'] = _stock;
    map['star'] = _star;
    map['remark'] = _remark;
    map['category_id'] = _categoryId;
    map['brand_id'] = _brandId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}