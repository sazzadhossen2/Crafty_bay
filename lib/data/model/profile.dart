/// msg : "success"
/// data : {"id":114,"cus_name":"Rabbil Hasan Rupom","cus_add":"Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207","cus_city":"Dhaka","cus_state":"Dhaka","cus_postcode":"1207","cus_country":"Bangladesh","cus_phone":"01785388919","cus_fax":"01785388919","ship_name":"Rabbil Hasan","ship_add":"Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207","ship_city":"Dhaka","ship_state":"Dhaka","ship_postcode":"1207","ship_country":"Bangladesh","ship_phone":"01785388919","user_id":205,"created_at":"2024-02-08T04:35:26.000000Z","updated_at":"2024-02-08T04:35:26.000000Z","user":{"id":205,"email":"sazzad4031@gmail.com","otp":"0","created_at":"2024-02-04T13:49:10.000000Z","updated_at":"2024-06-20T15:29:44.000000Z"}}
library;

class Profile {
  Profile({
      String? msg, 
      Data? data,}){
    _msg = msg;
    _data = data;
}

  Profile.fromJson(dynamic json) {
    _msg = json['msg'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _msg;
  Data? _data;
Profile copyWith({  String? msg,
  Data? data,
}) => Profile(  msg: msg ?? _msg,
  data: data ?? _data,
);
  String? get msg => _msg;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['msg'] = _msg;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : 114
/// cus_name : "Rabbil Hasan Rupom"
/// cus_add : "Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207"
/// cus_city : "Dhaka"
/// cus_state : "Dhaka"
/// cus_postcode : "1207"
/// cus_country : "Bangladesh"
/// cus_phone : "01785388919"
/// cus_fax : "01785388919"
/// ship_name : "Rabbil Hasan"
/// ship_add : "Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207"
/// ship_city : "Dhaka"
/// ship_state : "Dhaka"
/// ship_postcode : "1207"
/// ship_country : "Bangladesh"
/// ship_phone : "01785388919"
/// user_id : 205
/// created_at : "2024-02-08T04:35:26.000000Z"
/// updated_at : "2024-02-08T04:35:26.000000Z"
/// user : {"id":205,"email":"sazzad4031@gmail.com","otp":"0","created_at":"2024-02-04T13:49:10.000000Z","updated_at":"2024-06-20T15:29:44.000000Z"}

class Data {
  Data({
      num? id, 
      String? cusName, 
      String? cusAdd, 
      String? cusCity, 
      String? cusState, 
      String? cusPostcode, 
      String? cusCountry, 
      String? cusPhone, 
      String? cusFax, 
      String? shipName, 
      String? shipAdd, 
      String? shipCity, 
      String? shipState, 
      String? shipPostcode, 
      String? shipCountry, 
      String? shipPhone, 
      num? userId, 
      String? createdAt, 
      String? updatedAt, 
      User? user,}){
    _id = id;
    _cusName = cusName;
    _cusAdd = cusAdd;
    _cusCity = cusCity;
    _cusState = cusState;
    _cusPostcode = cusPostcode;
    _cusCountry = cusCountry;
    _cusPhone = cusPhone;
    _cusFax = cusFax;
    _shipName = shipName;
    _shipAdd = shipAdd;
    _shipCity = shipCity;
    _shipState = shipState;
    _shipPostcode = shipPostcode;
    _shipCountry = shipCountry;
    _shipPhone = shipPhone;
    _userId = userId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _user = user;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _cusName = json['cus_name'];
    _cusAdd = json['cus_add'];
    _cusCity = json['cus_city'];
    _cusState = json['cus_state'];
    _cusPostcode = json['cus_postcode'];
    _cusCountry = json['cus_country'];
    _cusPhone = json['cus_phone'];
    _cusFax = json['cus_fax'];
    _shipName = json['ship_name'];
    _shipAdd = json['ship_add'];
    _shipCity = json['ship_city'];
    _shipState = json['ship_state'];
    _shipPostcode = json['ship_postcode'];
    _shipCountry = json['ship_country'];
    _shipPhone = json['ship_phone'];
    _userId = json['user_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  num? _id;
  String? _cusName;
  String? _cusAdd;
  String? _cusCity;
  String? _cusState;
  String? _cusPostcode;
  String? _cusCountry;
  String? _cusPhone;
  String? _cusFax;
  String? _shipName;
  String? _shipAdd;
  String? _shipCity;
  String? _shipState;
  String? _shipPostcode;
  String? _shipCountry;
  String? _shipPhone;
  num? _userId;
  String? _createdAt;
  String? _updatedAt;
  User? _user;
Data copyWith({  num? id,
  String? cusName,
  String? cusAdd,
  String? cusCity,
  String? cusState,
  String? cusPostcode,
  String? cusCountry,
  String? cusPhone,
  String? cusFax,
  String? shipName,
  String? shipAdd,
  String? shipCity,
  String? shipState,
  String? shipPostcode,
  String? shipCountry,
  String? shipPhone,
  num? userId,
  String? createdAt,
  String? updatedAt,
  User? user,
}) => Data(  id: id ?? _id,
  cusName: cusName ?? _cusName,
  cusAdd: cusAdd ?? _cusAdd,
  cusCity: cusCity ?? _cusCity,
  cusState: cusState ?? _cusState,
  cusPostcode: cusPostcode ?? _cusPostcode,
  cusCountry: cusCountry ?? _cusCountry,
  cusPhone: cusPhone ?? _cusPhone,
  cusFax: cusFax ?? _cusFax,
  shipName: shipName ?? _shipName,
  shipAdd: shipAdd ?? _shipAdd,
  shipCity: shipCity ?? _shipCity,
  shipState: shipState ?? _shipState,
  shipPostcode: shipPostcode ?? _shipPostcode,
  shipCountry: shipCountry ?? _shipCountry,
  shipPhone: shipPhone ?? _shipPhone,
  userId: userId ?? _userId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  user: user ?? _user,
);
  num? get id => _id;
  String? get cusName => _cusName;
  String? get cusAdd => _cusAdd;
  String? get cusCity => _cusCity;
  String? get cusState => _cusState;
  String? get cusPostcode => _cusPostcode;
  String? get cusCountry => _cusCountry;
  String? get cusPhone => _cusPhone;
  String? get cusFax => _cusFax;
  String? get shipName => _shipName;
  String? get shipAdd => _shipAdd;
  String? get shipCity => _shipCity;
  String? get shipState => _shipState;
  String? get shipPostcode => _shipPostcode;
  String? get shipCountry => _shipCountry;
  String? get shipPhone => _shipPhone;
  num? get userId => _userId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['cus_name'] = _cusName;
    map['cus_add'] = _cusAdd;
    map['cus_city'] = _cusCity;
    map['cus_state'] = _cusState;
    map['cus_postcode'] = _cusPostcode;
    map['cus_country'] = _cusCountry;
    map['cus_phone'] = _cusPhone;
    map['cus_fax'] = _cusFax;
    map['ship_name'] = _shipName;
    map['ship_add'] = _shipAdd;
    map['ship_city'] = _shipCity;
    map['ship_state'] = _shipState;
    map['ship_postcode'] = _shipPostcode;
    map['ship_country'] = _shipCountry;
    map['ship_phone'] = _shipPhone;
    map['user_id'] = _userId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// id : 205
/// email : "sazzad4031@gmail.com"
/// otp : "0"
/// created_at : "2024-02-04T13:49:10.000000Z"
/// updated_at : "2024-06-20T15:29:44.000000Z"

class User {
  User({
      num? id, 
      String? email, 
      String? otp, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _email = email;
    _otp = otp;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _email = json['email'];
    _otp = json['otp'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _email;
  String? _otp;
  String? _createdAt;
  String? _updatedAt;
User copyWith({  num? id,
  String? email,
  String? otp,
  String? createdAt,
  String? updatedAt,
}) => User(  id: id ?? _id,
  email: email ?? _email,
  otp: otp ?? _otp,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get email => _email;
  String? get otp => _otp;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['email'] = _email;
    map['otp'] = _otp;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}