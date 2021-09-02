class PassionResponse {
  String? status;
  Data? data;

  PassionResponse({
      this.status, 
      this.data});

  PassionResponse.fromJson(dynamic json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  List<Interests>? interests;
  bool? premium;
  String? id;
  String? name;
  String? selection;
  String? date;
  String? slug;
  int? v;

  Data({
      this.interests, 
      this.premium, 
      this.id, 
      this.name, 
      this.selection, 
      this.date, 
      this.slug, 
      this.v});

  Data.fromJson(dynamic json) {
    if (json['interests'] != null) {
      interests = [];
      json['interests'].forEach((v) {
        interests?.add(Interests.fromJson(v));
      });
    }
    premium = json['premium'];
    id = json['_id'];
    name = json['name'];
    selection = json['selection'];
    date = json['date'];
    slug = json['slug'];
    v = json['__v'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (interests != null) {
      map['interests'] = interests?.map((v) => v.toJson()).toList();
    }
    map['premium'] = premium;
    map['_id'] = id;
    map['name'] = name;
    map['selection'] = selection;
    map['date'] = date;
    map['slug'] = slug;
    map['__v'] = v;
    return map;
  }

}

class Interests {
  bool? flag;
  String? id;
  String? name;
  String? category;
  String? date;
  String? slug;
  int? v;
  String? image;

  Interests({
      this.flag, 
      this.id, 
      this.name, 
      this.category, 
      this.date, 
      this.slug, 
      this.v, 
      this.image});

  Interests.fromJson(dynamic json) {
    flag = json['flag'];
    id = json['_id'];
    name = json['name'];
    category = json['category'];
    date = json['date'];
    slug = json['slug'];
    v = json['__v'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['flag'] = flag;
    map['_id'] = id;
    map['name'] = name;
    map['category'] = category;
    map['date'] = date;
    map['slug'] = slug;
    map['__v'] = v;
    map['image'] = image;
    return map;
  }

}