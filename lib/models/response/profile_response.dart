import 'dart:core';

class ProfileResponse {
  String? status;
  DataProfile? data;

  ProfileResponse({
      this.status, 
      this.data});

  ProfileResponse.fromJson(dynamic json) {
    status = json['status'];
    data = json['data'] != null ? DataProfile.fromJson(json['data']) : null;
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

class DataProfile {
  Profile? profile;
  bool? fcmMatch;

  DataProfile({
      this.profile, 
      this.fcmMatch});

  DataProfile.fromJson(dynamic json) {
    profile = json['profile'] != null ? Profile.fromJson(json['profile']) : null;
    fcmMatch = json['fcm_match'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (profile != null) {
      map['profile'] = profile?.toJson();
    }
    map['fcm_match'] = fcmMatch;
    return map;
  }

}

class Profile {
  Location? location;
  String? name;
  String? profilePicture;
  String? gender;
  int? age;
  String? socketId;
  String? friendshipSocketId;
  String? bio;
  String? customerId;
  String? subscriptionId;
  List<Instagram>? instagram;
  int? count;
  String? boostExp;
  String? premiumExp;
  dynamic? isGlobal;
  bool? isDating;
  String? jobTitle;
  List<dynamic>? likes;
  List<dynamic>? friendshipLikes;
  List<dynamic>? friendshipDislikes;
  List<String>? blocked;
  List<dynamic>? dislikes;
  List<Interests>? interests;
  bool? isPremium;
  String? currency;
  String? id;
  List<Basic_info>? basicInfo;
  List<Filters>? filters;
  String? birthday;
  String? user;
  List<Photos>? photos;
  List<dynamic>? preference;
  String? date;
  int? v;
  List<Media>? media;

  Profile({
      this.location, 
      this.name, 
      this.profilePicture, 
      this.gender, 
      this.age, 
      this.socketId, 
      this.friendshipSocketId, 
      this.bio, 
      this.customerId, 
      this.subscriptionId, 
      this.instagram,
      this.count, 
      this.boostExp,
      this.premiumExp, 
      this.isGlobal, 
      this.isDating, 
      this.jobTitle, 
      this.likes, 
      this.friendshipLikes, 
      this.friendshipDislikes, 
      this.blocked, 
      this.dislikes, 
      this.interests, 
      this.isPremium, 
      this.currency, 
      this.id, 
      this.basicInfo, 
      this.filters, 
      this.birthday, 
      this.user, 
      this.photos, 
      this.preference, 
      this.date, 
      this.v, 
      this.media});

  Profile.fromJson(dynamic json) {
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    name = json['name'];
    profilePicture = json['profile_picture'];
    gender = json['gender'];
    age = json['age'];
    socketId = json['socket_id'];
    friendshipSocketId = json['friendship_socket_id'];
    bio = json['bio'];
    customerId = json['customer_id'];
    subscriptionId = json['subscription_id'];
    if (json['instagram'] != null) {
      instagram = [];
      json['instagram'].forEach((v) {
        instagram?.add(Instagram.fromJson(v));
      });
    }


    count = json['count'];
    boostExp = json['boost_exp'];

    premiumExp = json['premium_exp'];
    isGlobal = json['is_global'];
    isDating = json['is_dating'];
    jobTitle = json['job_title'];

    blocked = json['blocked'] != null ? json['blocked'].cast<String>() : [];

    if (json['interests'] != null) {
      interests = [];
      json['interests'].forEach((v) {
        interests?.add(Interests.fromJson(v));
      });
    }
    isPremium = json['is_premium'];
    currency = json['currency'];
    id = json['_id'];
    if (json['basic_info'] != null) {
      basicInfo = [];
      json['basic_info'].forEach((v) {
        basicInfo?.add(Basic_info.fromJson(v));
      });
    }
    if (json['filters'] != null) {
      filters = [];
      json['filters'].forEach((v) {
        filters?.add(Filters.fromJson(v));
      });
    }
    birthday = json['birthday'];
    user = json['user'];
    if (json['photos'] != null) {
      photos = [];
      json['photos'].forEach((v) {
        photos?.add(Photos.fromJson(v));
      });
    }

    date = json['date'];
    v = json['__v'];
    if (json['media'] != null) {
      media = [];
      json['media'].forEach((v) {
        media?.add(Media.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (location != null) {
      map['location'] = location?.toJson();
    }
    map['name'] = name;
    map['profile_picture'] = profilePicture;
    map['gender'] = gender;
    map['age'] = age;
    map['socket_id'] = socketId;
    map['friendship_socket_id'] = friendshipSocketId;
    map['bio'] = bio;
    map['customer_id'] = customerId;
    map['subscription_id'] = subscriptionId;
    if (instagram != null) {
      map['instagram'] = instagram?.map((v) => v.toJson()).toList();
    }

    map['count'] = count;
    map['boost_exp'] = boostExp;

    map['premium_exp'] = premiumExp;
    map['is_global'] = isGlobal;
    map['is_dating'] = isDating;
    map['job_title'] = jobTitle;
    if (likes != null) {
      map['likes'] = likes?.map((v) => v.toJson()).toList();
    }
    if (friendshipLikes != null) {
      map['friendship_likes'] = friendshipLikes?.map((v) => v.toJson()).toList();
    }
    if (friendshipDislikes != null) {
      map['friendship_dislikes'] = friendshipDislikes?.map((v) => v.toJson()).toList();
    }
    map['blocked'] = blocked;
    if (dislikes != null) {
      map['dislikes'] = dislikes?.map((v) => v.toJson()).toList();
    }
    if (interests != null) {
      map['interests'] = interests?.map((v) => v.toJson()).toList();
    }
    map['is_premium'] = isPremium;
    map['currency'] = currency;
    map['_id'] = id;
    if (basicInfo != null) {
      map['basic_info'] = basicInfo?.map((v) => v.toJson()).toList();
    }
    if (filters != null) {
      map['filters'] = filters?.map((v) => v.toJson()).toList();
    }
    map['birthday'] = birthday;
    map['user'] = user;
    if (photos != null) {
      map['photos'] = photos?.map((v) => v.toJson()).toList();
    }
    if (preference != null) {
      map['preference'] = preference?.map((v) => v.toJson()).toList();
    }
    map['date'] = date;
    map['__v'] = v;
    if (media != null) {
      map['media'] = media?.map((v) => v.toJson()).toList();
    }
    map['id'] = id;
    return map;
  }

}

class Media {
  List<Question>? question;
  bool? isVideo;
  String? id;
  String? user;
  String? video;
  String? date;
  int? v;
  String? filename;

  Media({
      this.question, 
      this.isVideo, 
      this.id, 
      this.user, 
      this.video, 
      this.date, 
      this.v,
  this.filename});

  Media.fromJson(dynamic json) {
    if (json['question'] != null) {
      question = [];
      json['question'].forEach((v) {
        question?.add(Question.fromJson(v));
      });
    }
    isVideo = json['is_video'];
    id = json['_id'];
    user = json['user'];
    video = json['video'];
    date = json['date'];
    v = json['__v'];
    filename = json['filename'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (question != null) {
      map['question'] = question?.map((v) => v.toJson()).toList();
    }
    map['is_video'] = isVideo;
    map['_id'] = id;
    map['user'] = user;
    map['video'] = video;
    map['date'] = date;
    map['__v'] = v;
    map['filename'] = filename;
    return map;
  }

}

class Question {
  bool? flag;
  String? id;
  String? name;
  String? category;
  String? date;
  String? slug;
  int? v;

  Question({
      this.flag, 
      this.id, 
      this.name, 
      this.category, 
      this.date, 
      this.slug, 
      this.v});

  Question.fromJson(dynamic json) {
    flag = json['flag'];
    id = json['_id'];
    name = json['name'];
    category = json['category'];
    date = json['date'];
    slug = json['slug'];
    v = json['__v'];
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
    return map;
  }

}

class Photos {
  String? filename;
  String? comment;
  int? index;
  bool? isVideo;
  String? id;

  Photos({
      this.filename, 
      this.comment, 
      this.index, 
      this.isVideo, 
      this.id});

  Photos.fromJson(dynamic json) {
    filename = json['filename'];
    comment = json['comment'];
    index = json['index'];
    isVideo = json['is_video'];
    id = json['_id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['filename'] = filename;
    map['comment'] = comment;
    map['index'] = index;
    map['is_video'] = isVideo;
    map['_id'] = id;
    return map;
  }

}

class Filters {
  bool? premium;
  String? id;
  Key? key;
  String? value;
  String? type;
  String? selection;
  String? range;

  Filters({
      this.premium, 
      this.id, 
      this.key, 
      this.value, 
      this.type, 
      this.selection, 
      this.range});

  Filters.fromJson(dynamic json) {
    premium = json['premium'];
    id = json['_id'];
    key = json['key'] != null ? Key.fromJson(json['key']) : null;
    value = json['value'];
    type = json['type'];
    selection = json['selection'];
    range = json['range'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['premium'] = premium;
    map['_id'] = id;
    if (key != null) {
      map['key'] = key?.toJson();
    }
    map['value'] = value;
    map['type'] = type;
    map['selection'] = selection;
    map['range'] = range;
    return map;
  }

}

class Key {
  String? id;
  String? name;

  Key({
      this.id, 
      this.name});

  Key.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    return map;
  }

}

class Basic_info {
  bool? premium;
  String? id;
  Key? key;
  String? value;

  Basic_info({
      this.premium, 
      this.id, 
      this.key, 
      this.value});

  Basic_info.fromJson(dynamic json) {
    premium = json['premium'];
    id = json['_id'];
    key = json['key'] != null ? Key.fromJson(json['key']) : null;
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['premium'] = premium;
    map['_id'] = id;
    if (key != null) {
      map['key'] = key?.toJson();
    }
    map['value'] = value;
    return map;
  }

}



class Interests {
  bool? flag;
  String? id;
  String? name;
  Category? category;
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
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
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
    if (category != null) {
      map['category'] = category?.toJson();
    }
    map['date'] = date;
    map['slug'] = slug;
    map['__v'] = v;
    map['image'] = image;
    return map;
  }

}

class Category {
  String? id;
  String? name;

  Category({
      this.id, 
      this.name});

  Category.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    return map;
  }

}

class Instagram {
  String? id;
  String? mediaUrl;
  bool? mediaType;

  Instagram({
      this.id, 
      this.mediaUrl, 
      this.mediaType});

  Instagram.fromJson(dynamic json) {
    id = json['id'];
    mediaUrl = json['media_url'];
    mediaType = json['media_type'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['media_url'] = mediaUrl;
    map['media_type'] = mediaType;
    return map;
  }

}

class Location {
  String? type;
  List<double>? coordinates;

  Location({
      this.type, 
      this.coordinates});

  Location.fromJson(dynamic json) {
    type = json['type'];
    coordinates = json['coordinates'] != null ? json['coordinates'].cast<double>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['type'] = type;
    map['coordinates'] = coordinates;
    return map;
  }

}