class PersonalContractInfoModel {
  ContractModel? _contractModel;
  String? _pdf;

  PersonalContractInfoModel({ContractModel? contractModel, String? pdf}) {
    if (contractModel != null) {
      this._contractModel = contractModel;
    }
    if (pdf != null) {
      this._pdf = pdf;
    }
  }

  ContractModel? get contractModel => _contractModel;
  set contractModel(ContractModel? contractModel) =>
      _contractModel = contractModel;
  String? get pdf => _pdf;
  set pdf(String? pdf) => _pdf = pdf;

  PersonalContractInfoModel.fromJson(Map<String, dynamic> json) {
    _contractModel = json['contractModel'] != null
        ? new ContractModel.fromJson(json['contractModel'])
        : null;
    _pdf = json['pdf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._contractModel != null) {
      data['contractModel'] = this._contractModel!.toJson();
    }
    data['pdf'] = this._pdf;
    return data;
  }
}

class ContractModel {
  String? _id;
  CurrencyType? _currencyType;
  String? _price;
  Null? _received;
  CurrencyType? _contractOrganisationType;
  CurrencyType? _contractSellType;
  String? _sealingDate;
  SealingLocation? _sealingLocation;
  String? _startingDate;
  String? _endingDate;
  RealEstate? _realEstate;
  String? _fromFingerPrint;
  String? _toFingerPrint;
  RealEstateGuide? _realEstateGuide;
  List<Conditions>? _conditions;
  ContractPartsDetails? _contractPartsDetails;
  String? _isRejected;

  ContractModel(
      {String? id,
      CurrencyType? currencyType,
      String? price,
      Null? received,
      CurrencyType? contractOrganisationType,
      CurrencyType? contractSellType,
      String? sealingDate,
      SealingLocation? sealingLocation,
      String? startingDate,
      String? endingDate,
      RealEstate? realEstate,
      String? fromFingerPrint,
      String? toFingerPrint,
      RealEstateGuide? realEstateGuide,
      List<Conditions>? conditions,
      ContractPartsDetails? contractPartsDetails,
      String? isRejected}) {
    if (id != null) {
      this._id = id;
    }
    if (currencyType != null) {
      this._currencyType = currencyType;
    }
    if (price != null) {
      this._price = price;
    }
    if (received != null) {
      this._received = received;
    }
    if (contractOrganisationType != null) {
      this._contractOrganisationType = contractOrganisationType;
    }
    if (contractSellType != null) {
      this._contractSellType = contractSellType;
    }
    if (sealingDate != null) {
      this._sealingDate = sealingDate;
    }
    if (sealingLocation != null) {
      this._sealingLocation = sealingLocation;
    }
    if (startingDate != null) {
      this._startingDate = startingDate;
    }
    if (endingDate != null) {
      this._endingDate = endingDate;
    }
    if (realEstate != null) {
      this._realEstate = realEstate;
    }
    if (fromFingerPrint != null) {
      this._fromFingerPrint = fromFingerPrint;
    }
    if (toFingerPrint != null) {
      this._toFingerPrint = toFingerPrint;
    }
    if (realEstateGuide != null) {
      this._realEstateGuide = realEstateGuide;
    }
    if (conditions != null) {
      this._conditions = conditions;
    }
    if (contractPartsDetails != null) {
      this._contractPartsDetails = contractPartsDetails;
    }
    if (isRejected != null) {
      this._isRejected = isRejected;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  CurrencyType? get currencyType => _currencyType;
  set currencyType(CurrencyType? currencyType) => _currencyType = currencyType;
  String? get price => _price;
  set price(String? price) => _price = price;
  Null? get received => _received;
  set received(Null? received) => _received = received;
  CurrencyType? get contractOrganisationType => _contractOrganisationType;
  set contractOrganisationType(CurrencyType? contractOrganisationType) =>
      _contractOrganisationType = contractOrganisationType;
  CurrencyType? get contractSellType => _contractSellType;
  set contractSellType(CurrencyType? contractSellType) =>
      _contractSellType = contractSellType;
  String? get sealingDate => _sealingDate;
  set sealingDate(String? sealingDate) => _sealingDate = sealingDate;
  SealingLocation? get sealingLocation => _sealingLocation;
  set sealingLocation(SealingLocation? sealingLocation) =>
      _sealingLocation = sealingLocation;
  String? get startingDate => _startingDate;
  set startingDate(String? startingDate) => _startingDate = startingDate;
  String? get endingDate => _endingDate;
  set endingDate(String? endingDate) => _endingDate = endingDate;
  RealEstate? get realEstate => _realEstate;
  set realEstate(RealEstate? realEstate) => _realEstate = realEstate;
  String? get fromFingerPrint => _fromFingerPrint;
  set fromFingerPrint(String? fromFingerPrint) =>
      _fromFingerPrint = fromFingerPrint;
  String? get toFingerPrint => _toFingerPrint;
  set toFingerPrint(String? toFingerPrint) => _toFingerPrint = toFingerPrint;
  RealEstateGuide? get realEstateGuide => _realEstateGuide;
  set realEstateGuide(RealEstateGuide? realEstateGuide) =>
      _realEstateGuide = realEstateGuide;
  List<Conditions>? get conditions => _conditions;
  set conditions(List<Conditions>? conditions) => _conditions = conditions;
  ContractPartsDetails? get contractPartsDetails => _contractPartsDetails;
  set contractPartsDetails(ContractPartsDetails? contractPartsDetails) =>
      _contractPartsDetails = contractPartsDetails;
  String? get isRejected => _isRejected;
  set isRejected(String? isRejected) => _isRejected = isRejected;

  ContractModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _currencyType = json['currencyType'] != null
        ? new CurrencyType.fromJson(json['currencyType'])
        : null;
    _price = json['price'];
    _received = json['received'];
    _contractOrganisationType = json['contractOrganisationType'] != null
        ? new CurrencyType.fromJson(json['contractOrganisationType'])
        : null;
    _contractSellType = json['contractSellType'] != null
        ? new CurrencyType.fromJson(json['contractSellType'])
        : null;
    _sealingDate = json['sealingDate'];
    _sealingLocation = json['sealingLocation'] != null
        ? new SealingLocation.fromJson(json['sealingLocation'])
        : null;
    _startingDate = json['startingDate'];
    _endingDate = json['endingDate'];
    _realEstate = json['realEstate'] != null
        ? new RealEstate.fromJson(json['realEstate'])
        : null;
    _fromFingerPrint = json['fromFingerPrint'];
    _toFingerPrint = json['toFingerPrint'];
    _realEstateGuide = json['realEstateGuide'] != null
        ? new RealEstateGuide.fromJson(json['realEstateGuide'])
        : null;
    if (json['conditions'] != null) {
      _conditions = <Conditions>[];
      json['conditions'].forEach((v) {
        _conditions!.add(new Conditions.fromJson(v));
      });
    }
    _contractPartsDetails = json['contractPartsDetails'] != null
        ? new ContractPartsDetails.fromJson(json['contractPartsDetails'])
        : null;
    _isRejected = json['isRejected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    if (this._currencyType != null) {
      data['currencyType'] = this._currencyType!.toJson();
    }
    data['price'] = this._price;
    data['received'] = this._received;
    if (this._contractOrganisationType != null) {
      data['contractOrganisationType'] =
          this._contractOrganisationType!.toJson();
    }
    if (this._contractSellType != null) {
      data['contractSellType'] = this._contractSellType!.toJson();
    }
    data['sealingDate'] = this._sealingDate;
    if (this._sealingLocation != null) {
      data['sealingLocation'] = this._sealingLocation!.toJson();
    }
    data['startingDate'] = this._startingDate;
    data['endingDate'] = this._endingDate;
    if (this._realEstate != null) {
      data['realEstate'] = this._realEstate!.toJson();
    }
    data['fromFingerPrint'] = this._fromFingerPrint;
    data['toFingerPrint'] = this._toFingerPrint;
    if (this._realEstateGuide != null) {
      data['realEstateGuide'] = this._realEstateGuide!.toJson();
    }
    if (this._conditions != null) {
      data['conditions'] = this._conditions!.map((v) => v.toJson()).toList();
    }
    if (this._contractPartsDetails != null) {
      data['contractPartsDetails'] = this._contractPartsDetails!.toJson();
    }
    data['isRejected'] = this._isRejected;
    return data;
  }
}

class CurrencyType {
  int? _id;
  String? _name;

  CurrencyType({int? id, String? name}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;

  CurrencyType.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    return data;
  }
}

class SealingLocation {
  String? _id;
  String? _nearestPoint;
  CurrencyType? _province;
  CurrencyType? _district;
  CurrencyType? _township;
  String? _neighborhood;
  String? _alley;
  String? _houseNumber;

  SealingLocation(
      {String? id,
      String? nearestPoint,
      CurrencyType? province,
      CurrencyType? district,
      CurrencyType? township,
      String? neighborhood,
      String? alley,
      String? houseNumber}) {
    if (id != null) {
      this._id = id;
    }
    if (nearestPoint != null) {
      this._nearestPoint = nearestPoint;
    }
    if (province != null) {
      this._province = province;
    }
    if (district != null) {
      this._district = district;
    }
    if (township != null) {
      this._township = township;
    }
    if (neighborhood != null) {
      this._neighborhood = neighborhood;
    }
    if (alley != null) {
      this._alley = alley;
    }
    if (houseNumber != null) {
      this._houseNumber = houseNumber;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get nearestPoint => _nearestPoint;
  set nearestPoint(String? nearestPoint) => _nearestPoint = nearestPoint;
  CurrencyType? get province => _province;
  set province(CurrencyType? province) => _province = province;
  CurrencyType? get district => _district;
  set district(CurrencyType? district) => _district = district;
  CurrencyType? get township => _township;
  set township(CurrencyType? township) => _township = township;
  String? get neighborhood => _neighborhood;
  set neighborhood(String? neighborhood) => _neighborhood = neighborhood;
  String? get alley => _alley;
  set alley(String? alley) => _alley = alley;
  String? get houseNumber => _houseNumber;
  set houseNumber(String? houseNumber) => _houseNumber = houseNumber;

  SealingLocation.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _nearestPoint = json['nearestPoint'];
    _province = json['province'] != null
        ? new CurrencyType.fromJson(json['province'])
        : null;
    _district = json['district'] != null
        ? new CurrencyType.fromJson(json['district'])
        : null;
    _township = json['township'] != null
        ? new CurrencyType.fromJson(json['township'])
        : null;
    _neighborhood = json['neighborhood'];
    _alley = json['alley'];
    _houseNumber = json['houseNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['nearestPoint'] = this._nearestPoint;
    if (this._province != null) {
      data['province'] = this._province!.toJson();
    }
    if (this._district != null) {
      data['district'] = this._district!.toJson();
    }
    if (this._township != null) {
      data['township'] = this._township!.toJson();
    }
    data['neighborhood'] = this._neighborhood;
    data['alley'] = this._alley;
    data['houseNumber'] = this._houseNumber;
    return data;
  }
}

class RealEstate {
  String? _id;
  Null? _realEstateArea;
  CurrencyType? _realEstateType;
  Null? _mercantile;
  int? _contractNumber;
  String? _contractAttachment;
  String? _contractDate;
  SealingLocation? _address;

  RealEstate(
      {String? id,
      Null? realEstateArea,
      CurrencyType? realEstateType,
      Null? mercantile,
      int? contractNumber,
      String? contractAttachment,
      String? contractDate,
      SealingLocation? address}) {
    if (id != null) {
      this._id = id;
    }
    if (realEstateArea != null) {
      this._realEstateArea = realEstateArea;
    }
    if (realEstateType != null) {
      this._realEstateType = realEstateType;
    }
    if (mercantile != null) {
      this._mercantile = mercantile;
    }
    if (contractNumber != null) {
      this._contractNumber = contractNumber;
    }
    if (contractAttachment != null) {
      this._contractAttachment = contractAttachment;
    }
    if (contractDate != null) {
      this._contractDate = contractDate;
    }
    if (address != null) {
      this._address = address;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  Null? get realEstateArea => _realEstateArea;
  set realEstateArea(Null? realEstateArea) => _realEstateArea = realEstateArea;
  CurrencyType? get realEstateType => _realEstateType;
  set realEstateType(CurrencyType? realEstateType) =>
      _realEstateType = realEstateType;
  Null? get mercantile => _mercantile;
  set mercantile(Null? mercantile) => _mercantile = mercantile;
  int? get contractNumber => _contractNumber;
  set contractNumber(int? contractNumber) => _contractNumber = contractNumber;
  String? get contractAttachment => _contractAttachment;
  set contractAttachment(String? contractAttachment) =>
      _contractAttachment = contractAttachment;
  String? get contractDate => _contractDate;
  set contractDate(String? contractDate) => _contractDate = contractDate;
  SealingLocation? get address => _address;
  set address(SealingLocation? address) => _address = address;

  RealEstate.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _realEstateArea = json['realEstateArea'];
    _realEstateType = json['realEstateType'] != null
        ? new CurrencyType.fromJson(json['realEstateType'])
        : null;
    _mercantile = json['mercantile'];
    _contractNumber = json['contractNumber'];
    _contractAttachment = json['contractAttachment'];
    _contractDate = json['contractDate'];
    _address = json['address'] != null
        ? new SealingLocation.fromJson(json['address'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['realEstateArea'] = this._realEstateArea;
    if (this._realEstateType != null) {
      data['realEstateType'] = this._realEstateType!.toJson();
    }
    data['mercantile'] = this._mercantile;
    data['contractNumber'] = this._contractNumber;
    data['contractAttachment'] = this._contractAttachment;
    data['contractDate'] = this._contractDate;
    if (this._address != null) {
      data['address'] = this._address!.toJson();
    }
    return data;
  }
}

class RealEstateGuide {
  String? _id;
  String? _officeName;
  String? _licenseNumber;
  int? _longitude;
  int? _latitude;
  SealingLocation? _address;

  RealEstateGuide(
      {String? id,
      String? officeName,
      String? licenseNumber,
      int? longitude,
      int? latitude,
      SealingLocation? address}) {
    if (id != null) {
      this._id = id;
    }
    if (officeName != null) {
      this._officeName = officeName;
    }
    if (licenseNumber != null) {
      this._licenseNumber = licenseNumber;
    }
    if (longitude != null) {
      this._longitude = longitude;
    }
    if (latitude != null) {
      this._latitude = latitude;
    }
    if (address != null) {
      this._address = address;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get officeName => _officeName;
  set officeName(String? officeName) => _officeName = officeName;
  String? get licenseNumber => _licenseNumber;
  set licenseNumber(String? licenseNumber) => _licenseNumber = licenseNumber;
  int? get longitude => _longitude;
  set longitude(int? longitude) => _longitude = longitude;
  int? get latitude => _latitude;
  set latitude(int? latitude) => _latitude = latitude;
  SealingLocation? get address => _address;
  set address(SealingLocation? address) => _address = address;

  RealEstateGuide.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _officeName = json['officeName'];
    _licenseNumber = json['licenseNumber'];
    _longitude = json['longitude'];
    _latitude = json['latitude'];
    _address = json['address'] != null
        ? new SealingLocation.fromJson(json['address'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['officeName'] = this._officeName;
    data['licenseNumber'] = this._licenseNumber;
    data['longitude'] = this._longitude;
    data['latitude'] = this._latitude;
    if (this._address != null) {
      data['address'] = this._address!.toJson();
    }
    return data;
  }
}

class Conditions {
  String? _id;
  String? _conditionDetails;

  Conditions({String? id, String? conditionDetails}) {
    if (id != null) {
      this._id = id;
    }
    if (conditionDetails != null) {
      this._conditionDetails = conditionDetails;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get conditionDetails => _conditionDetails;
  set conditionDetails(String? conditionDetails) =>
      _conditionDetails = conditionDetails;

  Conditions.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _conditionDetails = json['conditionDetails'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['conditionDetails'] = this._conditionDetails;
    return data;
  }
}

class ContractPartsDetails {
  String? _contractNumber;
  String? _qrCodeNumber;
  From? _from;
  From? _to;
  String? _fromAttachment;
  String? _toAttachment;
  From? _fromDepputy;
  int? _fromDepputyAgencyNumber;
  String? _fromDepputyAgencyDate;
  Null? _fromDepputyAgency;
  Null? _fromIssuerAgencyId;
  Null? _toDepputy;
  Null? _toDepputyAgencyNumber;
  Null? _toDepputyAgencyDate;
  Null? _toDepputyAgency;
  Null? _toIssuerAgencyId;
  Null? _fromOrganisation;
  Null? _fromHasAuthorization;
  Null? _fromAuthorizationNumber;
  Null? _fromAuthorizationDate;
  Null? _fromAuthorizationAttachment;
  Null? _toOrganisation;
  Null? _toHasAuthorization;
  Null? _toAuthorizationNumber;
  Null? _toAuthorizationDate;
  Null? _toAuthorizationAttachment;

  ContractPartsDetails(
      {String? contractNumber,
      String? qrCodeNumber,
      From? from,
      From? to,
      String? fromAttachment,
      String? toAttachment,
      From? fromDepputy,
      int? fromDepputyAgencyNumber,
      String? fromDepputyAgencyDate,
      Null? fromDepputyAgency,
      Null? fromIssuerAgencyId,
      Null? toDepputy,
      Null? toDepputyAgencyNumber,
      Null? toDepputyAgencyDate,
      Null? toDepputyAgency,
      Null? toIssuerAgencyId,
      Null? fromOrganisation,
      Null? fromHasAuthorization,
      Null? fromAuthorizationNumber,
      Null? fromAuthorizationDate,
      Null? fromAuthorizationAttachment,
      Null? toOrganisation,
      Null? toHasAuthorization,
      Null? toAuthorizationNumber,
      Null? toAuthorizationDate,
      Null? toAuthorizationAttachment}) {
    if (contractNumber != null) {
      this._contractNumber = contractNumber;
    }
    if (qrCodeNumber != null) {
      this._qrCodeNumber = qrCodeNumber;
    }
    if (from != null) {
      this._from = from;
    }
    if (to != null) {
      this._to = to;
    }
    if (fromAttachment != null) {
      this._fromAttachment = fromAttachment;
    }
    if (toAttachment != null) {
      this._toAttachment = toAttachment;
    }
    if (fromDepputy != null) {
      this._fromDepputy = fromDepputy;
    }
    if (fromDepputyAgencyNumber != null) {
      this._fromDepputyAgencyNumber = fromDepputyAgencyNumber;
    }
    if (fromDepputyAgencyDate != null) {
      this._fromDepputyAgencyDate = fromDepputyAgencyDate;
    }
    if (fromDepputyAgency != null) {
      this._fromDepputyAgency = fromDepputyAgency;
    }
    if (fromIssuerAgencyId != null) {
      this._fromIssuerAgencyId = fromIssuerAgencyId;
    }
    if (toDepputy != null) {
      this._toDepputy = toDepputy;
    }
    if (toDepputyAgencyNumber != null) {
      this._toDepputyAgencyNumber = toDepputyAgencyNumber;
    }
    if (toDepputyAgencyDate != null) {
      this._toDepputyAgencyDate = toDepputyAgencyDate;
    }
    if (toDepputyAgency != null) {
      this._toDepputyAgency = toDepputyAgency;
    }
    if (toIssuerAgencyId != null) {
      this._toIssuerAgencyId = toIssuerAgencyId;
    }
    if (fromOrganisation != null) {
      this._fromOrganisation = fromOrganisation;
    }
    if (fromHasAuthorization != null) {
      this._fromHasAuthorization = fromHasAuthorization;
    }
    if (fromAuthorizationNumber != null) {
      this._fromAuthorizationNumber = fromAuthorizationNumber;
    }
    if (fromAuthorizationDate != null) {
      this._fromAuthorizationDate = fromAuthorizationDate;
    }
    if (fromAuthorizationAttachment != null) {
      this._fromAuthorizationAttachment = fromAuthorizationAttachment;
    }
    if (toOrganisation != null) {
      this._toOrganisation = toOrganisation;
    }
    if (toHasAuthorization != null) {
      this._toHasAuthorization = toHasAuthorization;
    }
    if (toAuthorizationNumber != null) {
      this._toAuthorizationNumber = toAuthorizationNumber;
    }
    if (toAuthorizationDate != null) {
      this._toAuthorizationDate = toAuthorizationDate;
    }
    if (toAuthorizationAttachment != null) {
      this._toAuthorizationAttachment = toAuthorizationAttachment;
    }
  }

  String? get contractNumber => _contractNumber;
  set contractNumber(String? contractNumber) =>
      _contractNumber = contractNumber;
  String? get qrCodeNumber => _qrCodeNumber;
  set qrCodeNumber(String? qrCodeNumber) => _qrCodeNumber = qrCodeNumber;
  From? get from => _from;
  set from(From? from) => _from = from;
  From? get to => _to;
  set to(From? to) => _to = to;
  String? get fromAttachment => _fromAttachment;
  set fromAttachment(String? fromAttachment) =>
      _fromAttachment = fromAttachment;
  String? get toAttachment => _toAttachment;
  set toAttachment(String? toAttachment) => _toAttachment = toAttachment;
  From? get fromDepputy => _fromDepputy;
  set fromDepputy(From? fromDepputy) => _fromDepputy = fromDepputy;
  int? get fromDepputyAgencyNumber => _fromDepputyAgencyNumber;
  set fromDepputyAgencyNumber(int? fromDepputyAgencyNumber) =>
      _fromDepputyAgencyNumber = fromDepputyAgencyNumber;
  String? get fromDepputyAgencyDate => _fromDepputyAgencyDate;
  set fromDepputyAgencyDate(String? fromDepputyAgencyDate) =>
      _fromDepputyAgencyDate = fromDepputyAgencyDate;
  Null? get fromDepputyAgency => _fromDepputyAgency;
  set fromDepputyAgency(Null? fromDepputyAgency) =>
      _fromDepputyAgency = fromDepputyAgency;
  Null? get fromIssuerAgencyId => _fromIssuerAgencyId;
  set fromIssuerAgencyId(Null? fromIssuerAgencyId) =>
      _fromIssuerAgencyId = fromIssuerAgencyId;
  Null? get toDepputy => _toDepputy;
  set toDepputy(Null? toDepputy) => _toDepputy = toDepputy;
  Null? get toDepputyAgencyNumber => _toDepputyAgencyNumber;
  set toDepputyAgencyNumber(Null? toDepputyAgencyNumber) =>
      _toDepputyAgencyNumber = toDepputyAgencyNumber;
  Null? get toDepputyAgencyDate => _toDepputyAgencyDate;
  set toDepputyAgencyDate(Null? toDepputyAgencyDate) =>
      _toDepputyAgencyDate = toDepputyAgencyDate;
  Null? get toDepputyAgency => _toDepputyAgency;
  set toDepputyAgency(Null? toDepputyAgency) =>
      _toDepputyAgency = toDepputyAgency;
  Null? get toIssuerAgencyId => _toIssuerAgencyId;
  set toIssuerAgencyId(Null? toIssuerAgencyId) =>
      _toIssuerAgencyId = toIssuerAgencyId;
  Null? get fromOrganisation => _fromOrganisation;
  set fromOrganisation(Null? fromOrganisation) =>
      _fromOrganisation = fromOrganisation;
  Null? get fromHasAuthorization => _fromHasAuthorization;
  set fromHasAuthorization(Null? fromHasAuthorization) =>
      _fromHasAuthorization = fromHasAuthorization;
  Null? get fromAuthorizationNumber => _fromAuthorizationNumber;
  set fromAuthorizationNumber(Null? fromAuthorizationNumber) =>
      _fromAuthorizationNumber = fromAuthorizationNumber;
  Null? get fromAuthorizationDate => _fromAuthorizationDate;
  set fromAuthorizationDate(Null? fromAuthorizationDate) =>
      _fromAuthorizationDate = fromAuthorizationDate;
  Null? get fromAuthorizationAttachment => _fromAuthorizationAttachment;
  set fromAuthorizationAttachment(Null? fromAuthorizationAttachment) =>
      _fromAuthorizationAttachment = fromAuthorizationAttachment;
  Null? get toOrganisation => _toOrganisation;
  set toOrganisation(Null? toOrganisation) => _toOrganisation = toOrganisation;
  Null? get toHasAuthorization => _toHasAuthorization;
  set toHasAuthorization(Null? toHasAuthorization) =>
      _toHasAuthorization = toHasAuthorization;
  Null? get toAuthorizationNumber => _toAuthorizationNumber;
  set toAuthorizationNumber(Null? toAuthorizationNumber) =>
      _toAuthorizationNumber = toAuthorizationNumber;
  Null? get toAuthorizationDate => _toAuthorizationDate;
  set toAuthorizationDate(Null? toAuthorizationDate) =>
      _toAuthorizationDate = toAuthorizationDate;
  Null? get toAuthorizationAttachment => _toAuthorizationAttachment;
  set toAuthorizationAttachment(Null? toAuthorizationAttachment) =>
      _toAuthorizationAttachment = toAuthorizationAttachment;

  ContractPartsDetails.fromJson(Map<String, dynamic> json) {
    _contractNumber = json['contractNumber'];
    _qrCodeNumber = json['qrCodeNumber'];
    _from = json['from'] != null ? new From.fromJson(json['from']) : null;
    _to = json['to'] != null ? new From.fromJson(json['to']) : null;
    _fromAttachment = json['fromAttachment'];
    _toAttachment = json['toAttachment'];
    _fromDepputy = json['fromDepputy'] != null
        ? new From.fromJson(json['fromDepputy'])
        : null;
    _fromDepputyAgencyNumber = json['fromDepputyAgencyNumber'];
    _fromDepputyAgencyDate = json['fromDepputyAgencyDate'];
    _fromDepputyAgency = json['fromDepputyAgency'];
    _fromIssuerAgencyId = json['fromIssuerAgencyId'];
    _toDepputy = json['toDepputy'];
    _toDepputyAgencyNumber = json['toDepputyAgencyNumber'];
    _toDepputyAgencyDate = json['toDepputyAgencyDate'];
    _toDepputyAgency = json['toDepputyAgency'];
    _toIssuerAgencyId = json['toIssuerAgencyId'];
    _fromOrganisation = json['fromOrganisation'];
    _fromHasAuthorization = json['fromHasAuthorization'];
    _fromAuthorizationNumber = json['fromAuthorizationNumber'];
    _fromAuthorizationDate = json['fromAuthorizationDate'];
    _fromAuthorizationAttachment = json['fromAuthorizationAttachment'];
    _toOrganisation = json['toOrganisation'];
    _toHasAuthorization = json['toHasAuthorization'];
    _toAuthorizationNumber = json['toAuthorizationNumber'];
    _toAuthorizationDate = json['toAuthorizationDate'];
    _toAuthorizationAttachment = json['toAuthorizationAttachment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contractNumber'] = this._contractNumber;
    data['qrCodeNumber'] = this._qrCodeNumber;
    if (this._from != null) {
      data['from'] = this._from!.toJson();
    }
    if (this._to != null) {
      data['to'] = this._to!.toJson();
    }
    data['fromAttachment'] = this._fromAttachment;
    data['toAttachment'] = this._toAttachment;
    if (this._fromDepputy != null) {
      data['fromDepputy'] = this._fromDepputy!.toJson();
    }
    data['fromDepputyAgencyNumber'] = this._fromDepputyAgencyNumber;
    data['fromDepputyAgencyDate'] = this._fromDepputyAgencyDate;
    data['fromDepputyAgency'] = this._fromDepputyAgency;
    data['fromIssuerAgencyId'] = this._fromIssuerAgencyId;
    data['toDepputy'] = this._toDepputy;
    data['toDepputyAgencyNumber'] = this._toDepputyAgencyNumber;
    data['toDepputyAgencyDate'] = this._toDepputyAgencyDate;
    data['toDepputyAgency'] = this._toDepputyAgency;
    data['toIssuerAgencyId'] = this._toIssuerAgencyId;
    data['fromOrganisation'] = this._fromOrganisation;
    data['fromHasAuthorization'] = this._fromHasAuthorization;
    data['fromAuthorizationNumber'] = this._fromAuthorizationNumber;
    data['fromAuthorizationDate'] = this._fromAuthorizationDate;
    data['fromAuthorizationAttachment'] = this._fromAuthorizationAttachment;
    data['toOrganisation'] = this._toOrganisation;
    data['toHasAuthorization'] = this._toHasAuthorization;
    data['toAuthorizationNumber'] = this._toAuthorizationNumber;
    data['toAuthorizationDate'] = this._toAuthorizationDate;
    data['toAuthorizationAttachment'] = this._toAuthorizationAttachment;
    return data;
  }
}

class From {
  String? _id;
  String? _fullName;
  String? _residenceCardNumber;
  CurrencyType? _nationality;
  Null? _passportNumber;
  SealingLocation? _address;
  Null? _organisationIdentity;
  String? _nationalityNumber;
  CurrencyType? _martialState;
  int? _nationalID;
  CurrencyType? _occuption;
  Null? _emailAddress;
  String? _phoneNumber;
  String? _birthday;
  CurrencyType? _identityType;
  List<CitizenAttachmentsReadDto>? _citizenAttachmentsReadDto;
  Null? _organisationIdentityAttachments;

  From(
      {String? id,
      String? fullName,
      String? residenceCardNumber,
      CurrencyType? nationality,
      Null? passportNumber,
      SealingLocation? address,
      Null? organisationIdentity,
      String? nationalityNumber,
      CurrencyType? martialState,
      int? nationalID,
      CurrencyType? occuption,
      Null? emailAddress,
      String? phoneNumber,
      String? birthday,
      CurrencyType? identityType,
      List<CitizenAttachmentsReadDto>? citizenAttachmentsReadDto,
      Null? organisationIdentityAttachments}) {
    if (id != null) {
      this._id = id;
    }
    if (fullName != null) {
      this._fullName = fullName;
    }
    if (residenceCardNumber != null) {
      this._residenceCardNumber = residenceCardNumber;
    }
    if (nationality != null) {
      this._nationality = nationality;
    }
    if (passportNumber != null) {
      this._passportNumber = passportNumber;
    }
    if (address != null) {
      this._address = address;
    }
    if (organisationIdentity != null) {
      this._organisationIdentity = organisationIdentity;
    }
    if (nationalityNumber != null) {
      this._nationalityNumber = nationalityNumber;
    }
    if (martialState != null) {
      this._martialState = martialState;
    }
    if (nationalID != null) {
      this._nationalID = nationalID;
    }
    if (occuption != null) {
      this._occuption = occuption;
    }
    if (emailAddress != null) {
      this._emailAddress = emailAddress;
    }
    if (phoneNumber != null) {
      this._phoneNumber = phoneNumber;
    }
    if (birthday != null) {
      this._birthday = birthday;
    }
    if (identityType != null) {
      this._identityType = identityType;
    }
    if (citizenAttachmentsReadDto != null) {
      this._citizenAttachmentsReadDto = citizenAttachmentsReadDto;
    }
    if (organisationIdentityAttachments != null) {
      this._organisationIdentityAttachments = organisationIdentityAttachments;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get fullName => _fullName;
  set fullName(String? fullName) => _fullName = fullName;
  String? get residenceCardNumber => _residenceCardNumber;
  set residenceCardNumber(String? residenceCardNumber) =>
      _residenceCardNumber = residenceCardNumber;
  CurrencyType? get nationality => _nationality;
  set nationality(CurrencyType? nationality) => _nationality = nationality;
  Null? get passportNumber => _passportNumber;
  set passportNumber(Null? passportNumber) => _passportNumber = passportNumber;
  SealingLocation? get address => _address;
  set address(SealingLocation? address) => _address = address;
  Null? get organisationIdentity => _organisationIdentity;
  set organisationIdentity(Null? organisationIdentity) =>
      _organisationIdentity = organisationIdentity;
  String? get nationalityNumber => _nationalityNumber;
  set nationalityNumber(String? nationalityNumber) =>
      _nationalityNumber = nationalityNumber;
  CurrencyType? get martialState => _martialState;
  set martialState(CurrencyType? martialState) => _martialState = martialState;
  int? get nationalID => _nationalID;
  set nationalID(int? nationalID) => _nationalID = nationalID;
  CurrencyType? get occuption => _occuption;
  set occuption(CurrencyType? occuption) => _occuption = occuption;
  Null? get emailAddress => _emailAddress;
  set emailAddress(Null? emailAddress) => _emailAddress = emailAddress;
  String? get phoneNumber => _phoneNumber;
  set phoneNumber(String? phoneNumber) => _phoneNumber = phoneNumber;
  String? get birthday => _birthday;
  set birthday(String? birthday) => _birthday = birthday;
  CurrencyType? get identityType => _identityType;
  set identityType(CurrencyType? identityType) => _identityType = identityType;
  List<CitizenAttachmentsReadDto>? get citizenAttachmentsReadDto =>
      _citizenAttachmentsReadDto;
  set citizenAttachmentsReadDto(
          List<CitizenAttachmentsReadDto>? citizenAttachmentsReadDto) =>
      _citizenAttachmentsReadDto = citizenAttachmentsReadDto;
  Null? get organisationIdentityAttachments => _organisationIdentityAttachments;
  set organisationIdentityAttachments(Null? organisationIdentityAttachments) =>
      _organisationIdentityAttachments = organisationIdentityAttachments;

  From.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _fullName = json['fullName'];
    _residenceCardNumber = json['residenceCardNumber'];
    _nationality = json['nationality'] != null
        ? new CurrencyType.fromJson(json['nationality'])
        : null;
    _passportNumber = json['passportNumber'];
    _address = json['address'] != null
        ? new SealingLocation.fromJson(json['address'])
        : null;
    _organisationIdentity = json['organisationIdentity'];
    _nationalityNumber = json['nationalityNumber'];
    _martialState = json['martialState'] != null
        ? new CurrencyType.fromJson(json['martialState'])
        : null;
    _nationalID = json['nationalID'];
    _occuption = json['occuption'] != null
        ? new CurrencyType.fromJson(json['occuption'])
        : null;
    _emailAddress = json['emailAddress'];
    _phoneNumber = json['phoneNumber'];
    _birthday = json['birthday'];
    _identityType = json['identityType'] != null
        ? new CurrencyType.fromJson(json['identityType'])
        : null;
    if (json['citizenAttachmentsReadDto'] != null) {
      _citizenAttachmentsReadDto = <CitizenAttachmentsReadDto>[];
      json['citizenAttachmentsReadDto'].forEach((v) {
        _citizenAttachmentsReadDto!
            .add(new CitizenAttachmentsReadDto.fromJson(v));
      });
    }
    _organisationIdentityAttachments = json['organisationIdentityAttachments'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['fullName'] = this._fullName;
    data['residenceCardNumber'] = this._residenceCardNumber;
    if (this._nationality != null) {
      data['nationality'] = this._nationality!.toJson();
    }
    data['passportNumber'] = this._passportNumber;
    if (this._address != null) {
      data['address'] = this._address!.toJson();
    }
    data['organisationIdentity'] = this._organisationIdentity;
    data['nationalityNumber'] = this._nationalityNumber;
    if (this._martialState != null) {
      data['martialState'] = this._martialState!.toJson();
    }
    data['nationalID'] = this._nationalID;
    if (this._occuption != null) {
      data['occuption'] = this._occuption!.toJson();
    }
    data['emailAddress'] = this._emailAddress;
    data['phoneNumber'] = this._phoneNumber;
    data['birthday'] = this._birthday;
    if (this._identityType != null) {
      data['identityType'] = this._identityType!.toJson();
    }
    if (this._citizenAttachmentsReadDto != null) {
      data['citizenAttachmentsReadDto'] =
          this._citizenAttachmentsReadDto!.map((v) => v.toJson()).toList();
    }
    data['organisationIdentityAttachments'] =
        this._organisationIdentityAttachments;
    return data;
  }
}

class CitizenAttachmentsReadDto {
  String? _id;
  String? _attachment;

  CitizenAttachmentsReadDto({String? id, String? attachment}) {
    if (id != null) {
      this._id = id;
    }
    if (attachment != null) {
      this._attachment = attachment;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get attachment => _attachment;
  set attachment(String? attachment) => _attachment = attachment;

  CitizenAttachmentsReadDto.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _attachment = json['attachment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['attachment'] = this._attachment;
    return data;
  }
}
