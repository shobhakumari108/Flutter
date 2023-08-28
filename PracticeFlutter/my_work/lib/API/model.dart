class ModelName {
  User? user;

  ModelName({this.user});

  ModelName.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? id;
  String? username;
  String? firstName;
  String? lastName;
  String? email;
  String? birthdate;
  Address? address;
  PhoneNumbers? phoneNumbers;
  SocialMedia? socialMedia;
  Membership? membership;
  Preferences? preferences;
  List<Orders>? orders;

  User(
      {this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.email,
      this.birthdate,
      this.address,
      this.phoneNumbers,
      this.socialMedia,
      this.membership,
      this.preferences,
      this.orders});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    birthdate = json['birthdate'];
    address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
    phoneNumbers = json['phoneNumbers'] != null
        ? new PhoneNumbers.fromJson(json['phoneNumbers'])
        : null;
    socialMedia = json['socialMedia'] != null
        ? new SocialMedia.fromJson(json['socialMedia'])
        : null;
    membership = json['membership'] != null
        ? new Membership.fromJson(json['membership'])
        : null;
    preferences = json['preferences'] != null
        ? new Preferences.fromJson(json['preferences'])
        : null;
    if (json['orders'] != null) {
      orders = <Orders>[];
      json['orders'].forEach((v) {
        orders!.add(new Orders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['birthdate'] = this.birthdate;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    if (this.phoneNumbers != null) {
      data['phoneNumbers'] = this.phoneNumbers!.toJson();
    }
    if (this.socialMedia != null) {
      data['socialMedia'] = this.socialMedia!.toJson();
    }
    if (this.membership != null) {
      data['membership'] = this.membership!.toJson();
    }
    if (this.preferences != null) {
      data['preferences'] = this.preferences!.toJson();
    }
    if (this.orders != null) {
      data['orders'] = this.orders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Address {
  String? street;
  String? city;
  String? state;
  String? postalCode;
  String? country;

  Address({this.street, this.city, this.state, this.postalCode, this.country});

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    city = json['city'];
    state = json['state'];
    postalCode = json['postalCode'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['city'] = this.city;
    data['state'] = this.state;
    data['postalCode'] = this.postalCode;
    data['country'] = this.country;
    return data;
  }
}

class PhoneNumbers {
  String? home;
  String? work;

  PhoneNumbers({this.home, this.work});

  PhoneNumbers.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    work = json['work'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['home'] = this.home;
    data['work'] = this.work;
    return data;
  }
}

class SocialMedia {
  String? facebook;
  String? twitter;
  String? instagram;

  SocialMedia({this.facebook, this.twitter, this.instagram});

  SocialMedia.fromJson(Map<String, dynamic> json) {
    facebook = json['facebook'];
    twitter = json['twitter'];
    instagram = json['instagram'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['facebook'] = this.facebook;
    data['twitter'] = this.twitter;
    data['instagram'] = this.instagram;
    return data;
  }
}

class Membership {
  String? type;
  String? status;
  String? joinDate;
  String? expirationDate;

  Membership({this.type, this.status, this.joinDate, this.expirationDate});

  Membership.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    status = json['status'];
    joinDate = json['joinDate'];
    expirationDate = json['expirationDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['status'] = this.status;
    data['joinDate'] = this.joinDate;
    data['expirationDate'] = this.expirationDate;
    return data;
  }
}

class Preferences {
  String? language;
  String? timezone;
  String? theme;

  Preferences({this.language, this.timezone, this.theme});

  Preferences.fromJson(Map<String, dynamic> json) {
    language = json['language'];
    timezone = json['timezone'];
    theme = json['theme'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['language'] = this.language;
    data['timezone'] = this.timezone;
    data['theme'] = this.theme;
    return data;
  }
}

class Orders {
  String? orderID;
  String? date;
  double? totalAmount;
  List<Items>? items;

  Orders({this.orderID, this.date, this.totalAmount, this.items});

  Orders.fromJson(Map<String, dynamic> json) {
    orderID = json['orderID'];
    date = json['date'];
    totalAmount = json['totalAmount'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orderID'] = this.orderID;
    data['date'] = this.date;
    data['totalAmount'] = this.totalAmount;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? productID;
  String? productName;
  int? quantity;
  double? pricePerUnit;

  Items({this.productID, this.productName, this.quantity, this.pricePerUnit});

  Items.fromJson(Map<String, dynamic> json) {
    productID = json['productID'];
    productName = json['productName'];
    quantity = json['quantity'];
    pricePerUnit = json['pricePerUnit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productID'] = this.productID;
    data['productName'] = this.productName;
    data['quantity'] = this.quantity;
    data['pricePerUnit'] = this.pricePerUnit;
    return data;
  }
}