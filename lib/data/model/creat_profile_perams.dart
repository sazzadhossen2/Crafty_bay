class CreatProfilePerams {
  final String name;
  final String address;
  final String city;
  final String status;
  final String postCode;
  final String country;
  final String phone;
  final String fax;
  final String sname;
  final String sadd;
  final String scity;
  final String sState;
  final String spost;
  final String sCountry;
  final String sphone;

  CreatProfilePerams(this.name, this.address, this.city, this.status,
      this.postCode, this.country, this.phone, this.fax, this.sname, this.sadd,
      this.scity, this.sState,this.spost,this.sCountry,this.sphone);

  Map<String, dynamic> toJson() => {
    "cus_name": name,
    "cus_add": address,
    "cus_city": city,
    "cus_state": status,
    "cus_postcode": postCode,
    "cus_country": country,
    "cus_phone": phone,
    "cus_fax": fax,
    "ship_name":sname,
    "ship_add": sadd,
    "ship_city": scity,
    "ship_state": status,
    "ship_postcode": spost,
    "ship_country": sCountry,
    "ship_phone": sphone
  };
}
