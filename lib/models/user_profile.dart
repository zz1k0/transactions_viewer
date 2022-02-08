import 'package:get/get.dart';

class UserProfile {
  String? id;
  String? userName;
  String? email;
  String? phoneNumber;
  String? fingerprint;
  UserRead? userRead;
  int? userTypeID;

  UserProfile(
      {id, userName, email, phoneNumber, fingerprint, userRead, userTypeID});

  UserProfile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    fingerprint = json['fingerprint'];
    userRead = json['userRead'] != null
        ? new UserRead.fromJson(json['userRead'])
        : null;
    userTypeID = json['userTypeID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['userName'] = userName;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['fingerprint'] = fingerprint;
    if (userRead != null) {
      data['userRead'] = userRead!.toJson();
    }
    data['userTypeID'] = userTypeID;
    return data;
  }
}

class UserRead {
  String? id;
  String? careerTitle;
  String? nationalityNumber;
  Null? nationalID;
  Province? province;
  Province? district;
  Province? township;
  String? description;
  Province? identityType;
  List<UserReaderAttachmentsReadDto>? userReaderAttachmentsReadDto;

  UserRead(
      {id,
      careerTitle,
      nationalityNumber,
      nationalID,
      province,
      district,
      township,
      description,
      identityType,
      userReaderAttachmentsReadDto});

  UserRead.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    careerTitle = json['careerTitle'];
    nationalityNumber = json['nationalityNumber'];
    nationalID = json['nationalID'];
    province = json['province'] != null
        ? new Province.fromJson(json['province'])
        : null;
    district = json['district'] != null
        ? new Province.fromJson(json['district'])
        : null;
    township = json['township'] != null
        ? new Province.fromJson(json['township'])
        : null;
    description = json['description'];
    identityType = json['identityType'] != null
        ? new Province.fromJson(json['identityType'])
        : null;
    if (json['userReaderAttachmentsReadDto'] != null) {
      userReaderAttachmentsReadDto = <UserReaderAttachmentsReadDto>[];
      json['userReaderAttachmentsReadDto'].forEach((v) {
        userReaderAttachmentsReadDto!
            .add(new UserReaderAttachmentsReadDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['careerTitle'] = careerTitle;
    data['nationalityNumber'] = nationalityNumber;
    data['nationalID'] = nationalID;
    if (province != null) {
      data['province'] = province!.toJson();
    }
    if (district != null) {
      data['district'] = district!.toJson();
    }
    if (township != null) {
      data['township'] = township!.toJson();
    }
    data['description'] = description;
    if (identityType != null) {
      data['identityType'] = identityType!.toJson();
    }
    if (userReaderAttachmentsReadDto != null) {
      data['userReaderAttachmentsReadDto'] =
          userReaderAttachmentsReadDto!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Province {
  int? id;
  String? name;

  Province({id, name});

  Province.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class UserReaderAttachmentsReadDto {
  String? id;
  String? attachment;

  UserReaderAttachmentsReadDto({id, attachment});

  UserReaderAttachmentsReadDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attachment = json['attachment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['attachment'] = attachment;
    return data;
  }
}

class OrderController extends GetxController {
  RxInt _orders = 0.obs;

  dynamic get orders {
    return _orders;
  }

  void addOrder() {
    _orders++;
  }
}
