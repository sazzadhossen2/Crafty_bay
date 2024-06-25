/// msg : "success"
/// data : [{"id":1,"img1":"https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg","img2":"https://photo.teamrabbil.com/images/2023/09/23/Group-1.png","img3":"https://photo.teamrabbil.com/images/2023/09/23/Group-2.png","img4":"https://photo.teamrabbil.com/images/2023/09/23/Group-3.png","des":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.","color":"Red,Green,White","size":"X,2X,3X","product_id":1,"created_at":"2023-08-20T09:49:16.000000Z","updated_at":"2023-09-23T19:47:20.000000Z","product":{"id":1,"title":"MacBook Air M1 8/256GB","short_des":"MacBook Air M1 8/256GB 13-inch Space Gray","price":"94000","discount":0,"discount_price":"0","image":"https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg","stock":1,"star":80,"remark":"new","category_id":1,"brand_id":1,"created_at":"2023-08-15T08:24:06.000000Z","updated_at":"2023-09-09T17:07:51.000000Z","brand":{"id":1,"brandName":"DELL","brandImg":"https://photo.teamrabbil.com/images/2023/09/09/b1.png","created_at":"2023-08-15T08:00:16.000000Z","updated_at":"2023-09-09T08:12:45.000000Z"},"category":{"id":1,"categoryName":"Television","categoryImg":"https://photo.teamrabbil.com/images/2023/09/09/cat_img1.png","created_at":"2023-08-15T07:59:11.000000Z","updated_at":"2023-09-09T07:42:29.000000Z"}}}]
library;

class ProductDetailsModel {
  ProductDetailsModel({
      String? msg, 
      List<ProductDetailData>? productdetaildata,}){
    _msg = msg;
    _data = productdetaildata;
}

  ProductDetailsModel.fromJson(dynamic json) {
    _msg = json['msg'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(ProductDetailData.fromJson(v));
      });
    }
  }
  String? _msg;
  List<ProductDetailData>? _data;
ProductDetailsModel copyWith({  String? msg,
  List<ProductDetailData>? data,
}) => ProductDetailsModel(  msg: msg ?? _msg,
  productdetaildata: data ?? _data,
);
  String? get msg => _msg;
  List<ProductDetailData>? get productdetaildata => _data;

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
/// img1 : "https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg"
/// img2 : "https://photo.teamrabbil.com/images/2023/09/23/Group-1.png"
/// img3 : "https://photo.teamrabbil.com/images/2023/09/23/Group-2.png"
/// img4 : "https://photo.teamrabbil.com/images/2023/09/23/Group-3.png"
/// des : "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
/// color : "Red,Green,White"
/// size : "X,2X,3X"
/// product_id : 1
/// created_at : "2023-08-20T09:49:16.000000Z"
/// updated_at : "2023-09-23T19:47:20.000000Z"
/// product : {"id":1,"title":"MacBook Air M1 8/256GB","short_des":"MacBook Air M1 8/256GB 13-inch Space Gray","price":"94000","discount":0,"discount_price":"0","image":"https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg","stock":1,"star":80,"remark":"new","category_id":1,"brand_id":1,"created_at":"2023-08-15T08:24:06.000000Z","updated_at":"2023-09-09T17:07:51.000000Z","brand":{"id":1,"brandName":"DELL","brandImg":"https://photo.teamrabbil.com/images/2023/09/09/b1.png","created_at":"2023-08-15T08:00:16.000000Z","updated_at":"2023-09-09T08:12:45.000000Z"},"category":{"id":1,"categoryName":"Television","categoryImg":"https://photo.teamrabbil.com/images/2023/09/09/cat_img1.png","created_at":"2023-08-15T07:59:11.000000Z","updated_at":"2023-09-09T07:42:29.000000Z"}}

class ProductDetailData {
  ProductDetailData({
      num? id, 
      String? img1, 
      String? img2, 
      String? img3, 
      String? img4, 
      String? des, 
      String? color, 
      String? size, 
      num? productId, 
      String? createdAt, 
      String? updatedAt, 
      Product? product,}){
    _id = id;
    _img1 = img1;
    _img2 = img2;
    _img3 = img3;
    _img4 = img4;
    _des = des;
    _color = color;
    _size = size;
    _productId = productId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _product = product;
}

  ProductDetailData.fromJson(dynamic json) {
    _id = json['id'];
    _img1 = json['img1'];
    _img2 = json['img2'];
    _img3 = json['img3'];
    _img4 = json['img4'];
    _des = json['des'];
    _color = json['color'];
    _size = json['size'];
    _productId = json['product_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _product = json['product'] != null ? Product.fromJson(json['product']) : null;
  }
  num? _id;
  String? _img1;
  String? _img2;
  String? _img3;
  String? _img4;
  String? _des;
  String? _color;
  String? _size;
  num? _productId;
  String? _createdAt;
  String? _updatedAt;
  Product? _product;
ProductDetailData copyWith({  num? id,
  String? img1,
  String? img2,
  String? img3,
  String? img4,
  String? des,
  String? color,
  String? size,
  num? productId,
  String? createdAt,
  String? updatedAt,
  Product? product,
}) => ProductDetailData(  id: id ?? _id,
  img1: img1 ?? _img1,
  img2: img2 ?? _img2,
  img3: img3 ?? _img3,
  img4: img4 ?? _img4,
  des: des ?? _des,
  color: color ?? _color,
  size: size ?? _size,
  productId: productId ?? _productId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  product: product ?? _product,
);
  num? get id => _id;
  String? get img1 => _img1;
  String? get img2 => _img2;
  String? get img3 => _img3;
  String? get img4 => _img4;
  String? get des => _des;
  String? get color => _color;
  String? get size => _size;
  num? get productId => _productId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Product? get product => _product;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['img1'] = _img1;
    map['img2'] = _img2;
    map['img3'] = _img3;
    map['img4'] = _img4;
    map['des'] = _des;
    map['color'] = _color;
    map['size'] = _size;
    map['product_id'] = _productId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_product != null) {
      map['product'] = _product?.toJson();
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
/// brand : {"id":1,"brandName":"DELL","brandImg":"https://photo.teamrabbil.com/images/2023/09/09/b1.png","created_at":"2023-08-15T08:00:16.000000Z","updated_at":"2023-09-09T08:12:45.000000Z"}
/// category : {"id":1,"categoryName":"Television","categoryImg":"https://photo.teamrabbil.com/images/2023/09/09/cat_img1.png","created_at":"2023-08-15T07:59:11.000000Z","updated_at":"2023-09-09T07:42:29.000000Z"}

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
      dynamic star,
      String? remark, 
      num? categoryId, 
      num? brandId, 
      String? createdAt, 
      String? updatedAt, 
      Brand? brand, 
      Category? category,}){
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
    _brand = brand;
    _category = category;
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
    _brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    _category = json['category'] != null ? Category.fromJson(json['category']) : null;
  }
  num? _id;
  String? _title;
  String? _shortDes;
  String? _price;
  num? _discount;
  String? _discountPrice;
  String? _image;
  num? _stock;
  dynamic _star;
  String? _remark;
  num? _categoryId;
  num? _brandId;
  String? _createdAt;
  String? _updatedAt;
  Brand? _brand;
  Category? _category;
Product copyWith({  num? id,
  String? title,
  String? shortDes,
  String? price,
  num? discount,
  String? discountPrice,
  String? image,
  num? stock,
  dynamic star,
  String? remark,
  num? categoryId,
  num? brandId,
  String? createdAt,
  String? updatedAt,
  Brand? brand,
  Category? category,
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
  brand: brand ?? _brand,
  category: category ?? _category,
);
  num? get id => _id;
  String? get title => _title;
  String? get shortDes => _shortDes;
  String? get price => _price;
  num? get discount => _discount;
  String? get discountPrice => _discountPrice;
  String? get image => _image;
  num? get stock => _stock;
  dynamic get star => _star;
  String? get remark => _remark;
  num? get categoryId => _categoryId;
  num? get brandId => _brandId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Brand? get brand => _brand;
  Category? get category => _category;

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
    if (_brand != null) {
      map['brand'] = _brand?.toJson();
    }
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    return map;
  }

}

/// id : 1
/// categoryName : "Television"
/// categoryImg : "https://photo.teamrabbil.com/images/2023/09/09/cat_img1.png"
/// created_at : "2023-08-15T07:59:11.000000Z"
/// updated_at : "2023-09-09T07:42:29.000000Z"

class Category {
  Category({
      num? id, 
      String? categoryName, 
      String? categoryImg, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _categoryName = categoryName;
    _categoryImg = categoryImg;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Category.fromJson(dynamic json) {
    _id = json['id'];
    _categoryName = json['categoryName'];
    _categoryImg = json['categoryImg'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _categoryName;
  String? _categoryImg;
  String? _createdAt;
  String? _updatedAt;
Category copyWith({  num? id,
  String? categoryName,
  String? categoryImg,
  String? createdAt,
  String? updatedAt,
}) => Category(  id: id ?? _id,
  categoryName: categoryName ?? _categoryName,
  categoryImg: categoryImg ?? _categoryImg,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get categoryName => _categoryName;
  String? get categoryImg => _categoryImg;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['categoryName'] = _categoryName;
    map['categoryImg'] = _categoryImg;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 1
/// brandName : "DELL"
/// brandImg : "https://photo.teamrabbil.com/images/2023/09/09/b1.png"
/// created_at : "2023-08-15T08:00:16.000000Z"
/// updated_at : "2023-09-09T08:12:45.000000Z"

class Brand {
  Brand({
      num? id, 
      String? brandName, 
      String? brandImg, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _brandName = brandName;
    _brandImg = brandImg;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Brand.fromJson(dynamic json) {
    _id = json['id'];
    _brandName = json['brandName'];
    _brandImg = json['brandImg'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _brandName;
  String? _brandImg;
  String? _createdAt;
  String? _updatedAt;
Brand copyWith({  num? id,
  String? brandName,
  String? brandImg,
  String? createdAt,
  String? updatedAt,
}) => Brand(  id: id ?? _id,
  brandName: brandName ?? _brandName,
  brandImg: brandImg ?? _brandImg,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get brandName => _brandName;
  String? get brandImg => _brandImg;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['brandName'] = _brandName;
    map['brandImg'] = _brandImg;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}