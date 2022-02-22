// class ContractDetails {
//   ContractModel? contractModel;
//   String? pdf;

//   ContractDetails({this.contractModel, this.pdf});

//   ContractDetails.fromJson(Map<String, dynamic> json) {
//     contractModel = json['contractModel'] != null
//         ? new ContractModel.fromJson(json['contractModel'])
//         : null;
//     pdf = json['pdf'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.contractModel != null) {
//       data['contractModel'] = this.contractModel!.toJson();
//     }
//     data['pdf'] = this.pdf;
//     return data;
//   }
// }

// class ContractModel {
//   String? id;
//   CurrencyType? currencyType;
//   String? price;
//   String? received;
//   CurrencyType? contractOrganisationType;
//   CurrencyType? contractSellType;
//   String? sealingDate;
//   SealingLocation? sealingLocation;
//   String? startingDate;
//   String? endingDate;
//   RealEstate? realEstate;
//   RealEstateGuide? realEstateGuide;
//   Null? secondRealEstateGuide;
//   List<Null>? conditions;
//   ContractPartsDetails? contractPartsDetails;
//   String? isRejected;
//   String? isCanceled;

//   ContractModel(
//       {this.id,
//       this.currencyType,
//       this.price,
//       this.received,
//       this.contractOrganisationType,
//       this.contractSellType,
//       this.sealingDate,
//       this.sealingLocation,
//       this.startingDate,
//       this.endingDate,
//       this.realEstate,
//       this.realEstateGuide,
//       this.secondRealEstateGuide,
//       this.conditions,
//       this.contractPartsDetails,
//       this.isRejected,
//       this.isCanceled});

//   ContractModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     currencyType = json['currencyType'] != null
//         ? new CurrencyType.fromJson(json['currencyType'])
//         : null;
//     price = json['price'];
//     received = json['received'];
//     contractOrganisationType = json['contractOrganisationType'] != null
//         ? new CurrencyType.fromJson(json['contractOrganisationType'])
//         : null;
//     contractSellType = json['contractSellType'] != null
//         ? new CurrencyType.fromJson(json['contractSellType'])
//         : null;
//     sealingDate = json['sealingDate'];
//     sealingLocation = json['sealingLocation'] != null
//         ? new SealingLocation.fromJson(json['sealingLocation'])
//         : null;
//     startingDate = json['startingDate'];
//     endingDate = json['endingDate'];
//     realEstate = json['realEstate'] != null
//         ? new RealEstate.fromJson(json['realEstate'])
//         : null;
//     realEstateGuide = json['realEstateGuide'] != null
//         ? new RealEstateGuide.fromJson(json['realEstateGuide'])
//         : null;
//     secondRealEstateGuide = json['secondRealEstateGuide'];
//     if (json['conditions'] != null) {
//       conditions = <Null>[];
//       json['conditions'].forEach((v) {
//         conditions!.add(new Null.fromJson(v));
//       });
//     }
//     contractPartsDetails = json['contractPartsDetails'] != null
//         ? new ContractPartsDetails.fromJson(json['contractPartsDetails'])
//         : null;
//     isRejected = json['isRejected'];
//     isCanceled = json['isCanceled'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     if (this.currencyType != null) {
//       data['currencyType'] = this.currencyType!.toJson();
//     }
//     data['price'] = this.price;
//     data['received'] = this.received;
//     if (this.contractOrganisationType != null) {
//       data['contractOrganisationType'] =
//           this.contractOrganisationType!.toJson();
//     }
//     if (this.contractSellType != null) {
//       data['contractSellType'] = this.contractSellType!.toJson();
//     }
//     data['sealingDate'] = this.sealingDate;
//     if (this.sealingLocation != null) {
//       data['sealingLocation'] = this.sealingLocation!.toJson();
//     }
//     data['startingDate'] = this.startingDate;
//     data['endingDate'] = this.endingDate;
//     if (this.realEstate != null) {
//       data['realEstate'] = this.realEstate!.toJson();
//     }
//     if (this.realEstateGuide != null) {
//       data['realEstateGuide'] = this.realEstateGuide!.toJson();
//     }
//     data['secondRealEstateGuide'] = this.secondRealEstateGuide;
//     if (this.conditions != null) {
//       data['conditions'] = this.conditions!.map((v) => v.toJson()).toList();
//     }
//     if (this.contractPartsDetails != null) {
//       data['contractPartsDetails'] = this.contractPartsDetails!.toJson();
//     }
//     data['isRejected'] = this.isRejected;
//     data['isCanceled'] = this.isCanceled;
//     return data;
//   }
// }

// class CurrencyType {
//   int? id;
//   String? name;

//   CurrencyType({this.id, this.name});

//   CurrencyType.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     return data;
//   }
// }

// class SealingLocation {
//   String? id;
//   String? nearestPoint;
//   CurrencyType? province;
//   CurrencyType? district;
//   CurrencyType? township;
//   String? neighborhood;
//   String? alley;
//   String? houseNumber;

//   SealingLocation(
//       {this.id,
//       this.nearestPoint,
//       this.province,
//       this.district,
//       this.township,
//       this.neighborhood,
//       this.alley,
//       this.houseNumber});

//   SealingLocation.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     nearestPoint = json['nearestPoint'];
//     province = json['province'] != null
//         ? new CurrencyType.fromJson(json['province'])
//         : null;
//     district = json['district'] != null
//         ? new CurrencyType.fromJson(json['district'])
//         : null;
//     township = json['township'] != null
//         ? new CurrencyType.fromJson(json['township'])
//         : null;
//     neighborhood = json['neighborhood'];
//     alley = json['alley'];
//     houseNumber = json['houseNumber'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['nearestPoint'] = this.nearestPoint;
//     if (this.province != null) {
//       data['province'] = this.province!.toJson();
//     }
//     if (this.district != null) {
//       data['district'] = this.district!.toJson();
//     }
//     if (this.township != null) {
//       data['township'] = this.township!.toJson();
//     }
//     data['neighborhood'] = this.neighborhood;
//     data['alley'] = this.alley;
//     data['houseNumber'] = this.houseNumber;
//     return data;
//   }
// }

// class RealEstate {
//   String? id;
//   CurrencyType? realEstateType;
//   CurrencyType? realEstateClass;
//   int? contractNumber;
//   String? contractAttachment;
//   String? contractDate;
//   int? realEstateArea;
//   Null? soldArea;
//   Null? residualArea;
//   SealingLocation? address;

//   RealEstate(
//       {this.id,
//       this.realEstateType,
//       this.realEstateClass,
//       this.contractNumber,
//       this.contractAttachment,
//       this.contractDate,
//       this.realEstateArea,
//       this.soldArea,
//       this.residualArea,
//       this.address});

//   RealEstate.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     realEstateType = json['realEstateType'] != null
//         ? new CurrencyType.fromJson(json['realEstateType'])
//         : null;
//     realEstateClass = json['realEstateClass'] != null
//         ? new CurrencyType.fromJson(json['realEstateClass'])
//         : null;
//     contractNumber = json['contractNumber'];
//     contractAttachment = json['contractAttachment'];
//     contractDate = json['contractDate'];
//     realEstateArea = json['realEstateArea'];
//     soldArea = json['soldArea'];
//     residualArea = json['residualArea'];
//     address = json['address'] != null
//         ? new SealingLocation.fromJson(json['address'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     if (this.realEstateType != null) {
//       data['realEstateType'] = this.realEstateType!.toJson();
//     }
//     if (this.realEstateClass != null) {
//       data['realEstateClass'] = this.realEstateClass!.toJson();
//     }
//     data['contractNumber'] = this.contractNumber;
//     data['contractAttachment'] = this.contractAttachment;
//     data['contractDate'] = this.contractDate;
//     data['realEstateArea'] = this.realEstateArea;
//     data['soldArea'] = this.soldArea;
//     data['residualArea'] = this.residualArea;
//     if (this.address != null) {
//       data['address'] = this.address!.toJson();
//     }
//     return data;
//   }
// }

// class RealEstateGuide {
//   String? id;
//   String? officeName;
//   String? licenseDate;
//   String? licenseAttachment;
//   String? licenseNumber;
//   int? longitude;
//   int? latitude;
//   SealingLocation? address;

//   RealEstateGuide(
//       {this.id,
//       this.officeName,
//       this.licenseDate,
//       this.licenseAttachment,
//       this.licenseNumber,
//       this.longitude,
//       this.latitude,
//       this.address});

//   RealEstateGuide.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     officeName = json['officeName'];
//     licenseDate = json['licenseDate'];
//     licenseAttachment = json['licenseAttachment'];
//     licenseNumber = json['licenseNumber'];
//     longitude = json['longitude'];
//     latitude = json['latitude'];
//     address = json['address'] != null
//         ? new SealingLocation.fromJson(json['address'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['officeName'] = this.officeName;
//     data['licenseDate'] = this.licenseDate;
//     data['licenseAttachment'] = this.licenseAttachment;
//     data['licenseNumber'] = this.licenseNumber;
//     data['longitude'] = this.longitude;
//     data['latitude'] = this.latitude;
//     if (this.address != null) {
//       data['address'] = this.address!.toJson();
//     }
//     return data;
//   }
// }

// class ContractPartsDetails {
//   String? contractNumber;
//   String? qrCodeNumber;
//   From? from;
//   From? to;
//   String? fromAttachment;
//   String? toAttachment;
//   Null? fromDepputy;
//   Null? fromDepputyAgencyNumber;
//   Null? fromDepputyAgencyDate;
//   Null? fromDepputyAgency;
//   Null? fromIssuerAgencyId;
//   Null? customFromIssuerAgencyId;
//   Null? toDepputy;
//   Null? toDepputyAgencyNumber;
//   Null? toDepputyAgencyDate;
//   Null? toDepputyAgency;
//   Null? toIssuerAgencyId;
//   Null? customToIssuerAgencyId;
//   FromOrganisation? fromOrganisation;
//   Null? fromHasAuthorization;
//   Null? fromAuthorizationNumber;
//   Null? fromAuthorizationDate;
//   Null? fromAuthorizationAttachment;
//   Null? toOrganisation;
//   Null? toHasAuthorization;
//   Null? toAuthorizationNumber;
//   Null? toAuthorizationDate;
//   Null? toAuthorizationAttachment;

//   ContractPartsDetails(
//       {this.contractNumber,
//       this.qrCodeNumber,
//       this.from,
//       this.to,
//       this.fromAttachment,
//       this.toAttachment,
//       this.fromDepputy,
//       this.fromDepputyAgencyNumber,
//       this.fromDepputyAgencyDate,
//       this.fromDepputyAgency,
//       this.fromIssuerAgencyId,
//       this.customFromIssuerAgencyId,
//       this.toDepputy,
//       this.toDepputyAgencyNumber,
//       this.toDepputyAgencyDate,
//       this.toDepputyAgency,
//       this.toIssuerAgencyId,
//       this.customToIssuerAgencyId,
//       this.fromOrganisation,
//       this.fromHasAuthorization,
//       this.fromAuthorizationNumber,
//       this.fromAuthorizationDate,
//       this.fromAuthorizationAttachment,
//       this.toOrganisation,
//       this.toHasAuthorization,
//       this.toAuthorizationNumber,
//       this.toAuthorizationDate,
//       this.toAuthorizationAttachment});

//   ContractPartsDetails.fromJson(Map<String, dynamic> json) {
//     contractNumber = json['contractNumber'];
//     qrCodeNumber = json['qrCodeNumber'];
//     from = json['from'] != null ? new From.fromJson(json['from']) : null;
//     to = json['to'] != null ? new From.fromJson(json['to']) : null;
//     fromAttachment = json['fromAttachment'];
//     toAttachment = json['toAttachment'];
//     fromDepputy = json['fromDepputy'];
//     fromDepputyAgencyNumber = json['fromDepputyAgencyNumber'];
//     fromDepputyAgencyDate = json['fromDepputyAgencyDate'];
//     fromDepputyAgency = json['fromDepputyAgency'];
//     fromIssuerAgencyId = json['fromIssuerAgencyId'];
//     customFromIssuerAgencyId = json['customFromIssuerAgencyId'];
//     toDepputy = json['toDepputy'];
//     toDepputyAgencyNumber = json['toDepputyAgencyNumber'];
//     toDepputyAgencyDate = json['toDepputyAgencyDate'];
//     toDepputyAgency = json['toDepputyAgency'];
//     toIssuerAgencyId = json['toIssuerAgencyId'];
//     customToIssuerAgencyId = json['customToIssuerAgencyId'];
//     fromOrganisation = json['fromOrganisation'] != null
//         ? new FromOrganisation.fromJson(json['fromOrganisation'])
//         : null;
//     fromHasAuthorization = json['fromHasAuthorization'];
//     fromAuthorizationNumber = json['fromAuthorizationNumber'];
//     fromAuthorizationDate = json['fromAuthorizationDate'];
//     fromAuthorizationAttachment = json['fromAuthorizationAttachment'];
//     toOrganisation = json['toOrganisation'];
//     toHasAuthorization = json['toHasAuthorization'];
//     toAuthorizationNumber = json['toAuthorizationNumber'];
//     toAuthorizationDate = json['toAuthorizationDate'];
//     toAuthorizationAttachment = json['toAuthorizationAttachment'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['contractNumber'] = this.contractNumber;
//     data['qrCodeNumber'] = this.qrCodeNumber;
//     if (this.from != null) {
//       data['from'] = this.from!.toJson();
//     }
//     if (this.to != null) {
//       data['to'] = this.to!.toJson();
//     }
//     data['fromAttachment'] = this.fromAttachment;
//     data['toAttachment'] = this.toAttachment;
//     data['fromDepputy'] = this.fromDepputy;
//     data['fromDepputyAgencyNumber'] = this.fromDepputyAgencyNumber;
//     data['fromDepputyAgencyDate'] = this.fromDepputyAgencyDate;
//     data['fromDepputyAgency'] = this.fromDepputyAgency;
//     data['fromIssuerAgencyId'] = this.fromIssuerAgencyId;
//     data['customFromIssuerAgencyId'] = this.customFromIssuerAgencyId;
//     data['toDepputy'] = this.toDepputy;
//     data['toDepputyAgencyNumber'] = this.toDepputyAgencyNumber;
//     data['toDepputyAgencyDate'] = this.toDepputyAgencyDate;
//     data['toDepputyAgency'] = this.toDepputyAgency;
//     data['toIssuerAgencyId'] = this.toIssuerAgencyId;
//     data['customToIssuerAgencyId'] = this.customToIssuerAgencyId;
//     if (this.fromOrganisation != null) {
//       data['fromOrganisation'] = this.fromOrganisation!.toJson();
//     }
//     data['fromHasAuthorization'] = this.fromHasAuthorization;
//     data['fromAuthorizationNumber'] = this.fromAuthorizationNumber;
//     data['fromAuthorizationDate'] = this.fromAuthorizationDate;
//     data['fromAuthorizationAttachment'] = this.fromAuthorizationAttachment;
//     data['toOrganisation'] = this.toOrganisation;
//     data['toHasAuthorization'] = this.toHasAuthorization;
//     data['toAuthorizationNumber'] = this.toAuthorizationNumber;
//     data['toAuthorizationDate'] = this.toAuthorizationDate;
//     data['toAuthorizationAttachment'] = this.toAuthorizationAttachment;
//     return data;
//   }
// }

// class From {
//   String? id;
//   String? fullName;
//   String? motherFullName;
//   CurrencyType? gender;
//   String? residenceCardNumber;
//   CurrencyType? nationality;
//   Null? passportNumber;
//   SealingLocation? address;
//   Null? organisationIdentity;
//   String? nationalityNumber;
//   CurrencyType? martialState;
//   Null? nationalID;
//   CurrencyType? occuption;
//   Null? emailAddress;
//   String? phoneNumber;
//   String? birthday;
//   CurrencyType? identityType;
//   List<CitizenAttachmentsReadDto>? citizenAttachmentsReadDto;
//   List<Null>? organisationIdentityAttachments;
//   List<ResidenceCard>? residenceCard;

//   From(
//       {this.id,
//       this.fullName,
//       this.motherFullName,
//       this.gender,
//       this.residenceCardNumber,
//       this.nationality,
//       this.passportNumber,
//       this.address,
//       this.organisationIdentity,
//       this.nationalityNumber,
//       this.martialState,
//       this.nationalID,
//       this.occuption,
//       this.emailAddress,
//       this.phoneNumber,
//       this.birthday,
//       this.identityType,
//       this.citizenAttachmentsReadDto,
//       this.organisationIdentityAttachments,
//       this.residenceCard});

//   From.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     fullName = json['fullName'];
//     motherFullName = json['motherFullName'];
//     gender = json['gender'] != null
//         ? new CurrencyType.fromJson(json['gender'])
//         : null;
//     residenceCardNumber = json['residenceCardNumber'];
//     nationality = json['nationality'] != null
//         ? new CurrencyType.fromJson(json['nationality'])
//         : null;
//     passportNumber = json['passportNumber'];
//     address = json['address'] != null
//         ? new SealingLocation.fromJson(json['address'])
//         : null;
//     organisationIdentity = json['organisationIdentity'];
//     nationalityNumber = json['nationalityNumber'];
//     martialState = json['martialState'] != null
//         ? new CurrencyType.fromJson(json['martialState'])
//         : null;
//     nationalID = json['nationalID'];
//     occuption = json['occuption'] != null
//         ? new CurrencyType.fromJson(json['occuption'])
//         : null;
//     emailAddress = json['emailAddress'];
//     phoneNumber = json['phoneNumber'];
//     birthday = json['birthday'];
//     identityType = json['identityType'] != null
//         ? new CurrencyType.fromJson(json['identityType'])
//         : null;
//     if (json['citizenAttachmentsReadDto'] != null) {
//       citizenAttachmentsReadDto = <CitizenAttachmentsReadDto>[];
//       json['citizenAttachmentsReadDto'].forEach((v) {
//         citizenAttachmentsReadDto!
//             .add(new CitizenAttachmentsReadDto.fromJson(v));
//       });
//     }
//     if (json['organisationIdentityAttachments'] != null) {
//       organisationIdentityAttachments = <Null>[];
//       json['organisationIdentityAttachments'].forEach((v) {
//         organisationIdentityAttachments!.add(new Null.fromJson(v));
//       });
//     }
//     if (json['residenceCard'] != null) {
//       residenceCard = <ResidenceCard>[];
//       json['residenceCard'].forEach((v) {
//         residenceCard!.add(new ResidenceCard.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['fullName'] = this.fullName;
//     data['motherFullName'] = this.motherFullName;
//     if (this.gender != null) {
//       data['gender'] = this.gender!.toJson();
//     }
//     data['residenceCardNumber'] = this.residenceCardNumber;
//     if (this.nationality != null) {
//       data['nationality'] = this.nationality!.toJson();
//     }
//     data['passportNumber'] = this.passportNumber;
//     if (this.address != null) {
//       data['address'] = this.address!.toJson();
//     }
//     data['organisationIdentity'] = this.organisationIdentity;
//     data['nationalityNumber'] = this.nationalityNumber;
//     if (this.martialState != null) {
//       data['martialState'] = this.martialState!.toJson();
//     }
//     data['nationalID'] = this.nationalID;
//     if (this.occuption != null) {
//       data['occuption'] = this.occuption!.toJson();
//     }
//     data['emailAddress'] = this.emailAddress;
//     data['phoneNumber'] = this.phoneNumber;
//     data['birthday'] = this.birthday;
//     if (this.identityType != null) {
//       data['identityType'] = this.identityType!.toJson();
//     }
//     if (this.citizenAttachmentsReadDto != null) {
//       data['citizenAttachmentsReadDto'] =
//           this.citizenAttachmentsReadDto!.map((v) => v.toJson()).toList();
//     }
//     if (this.organisationIdentityAttachments != null) {
//       data['organisationIdentityAttachments'] =
//           this.organisationIdentityAttachments!.map((v) => v.toJson()).toList();
//     }
//     if (this.residenceCard != null) {
//       data['residenceCard'] =
//           this.residenceCard!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class CitizenAttachmentsReadDto {
//   String? id;
//   String? attachment;

//   CitizenAttachmentsReadDto({this.id, this.attachment});

//   CitizenAttachmentsReadDto.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     attachment = json['attachment'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['attachment'] = this.attachment;
//     return data;
//   }
// }

// class FromOrganisation {
//   String? id;
//   String? name;
//   List<Null>? organisationOwners;
//   List<AuthorizersEmployee>? authorizersEmployee;
//   String? registrationNumber;
//   String? registrationAttachment;
//   String? registrationDate;
//   SealingLocation? address;
//   CurrencyType? organisationType;
//   List<OrganisationEmployee>? organisationEmployee;

//   FromOrganisation(
//       {this.id,
//       this.name,
//       this.organisationOwners,
//       this.authorizersEmployee,
//       this.registrationNumber,
//       this.registrationAttachment,
//       this.registrationDate,
//       this.address,
//       this.organisationType,
//       this.organisationEmployee});

//   FromOrganisation.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     if (json['organisationOwners'] != null) {
//       organisationOwners = <Null>[];
//       json['organisationOwners'].forEach((v) {
//         organisationOwners!.add(new Null.fromJson(v));
//       });
//     }
//     if (json['authorizersEmployee'] != null) {
//       authorizersEmployee = <AuthorizersEmployee>[];
//       json['authorizersEmployee'].forEach((v) {
//         authorizersEmployee!.add(new AuthorizersEmployee.fromJson(v));
//       });
//     }
//     registrationNumber = json['registrationNumber'];
//     registrationAttachment = json['registrationAttachment'];
//     registrationDate = json['registrationDate'];
//     address = json['address'] != null
//         ? new SealingLocation.fromJson(json['address'])
//         : null;
//     organisationType = json['organisationType'] != null
//         ? new CurrencyType.fromJson(json['organisationType'])
//         : null;
//     if (json['organisationEmployee'] != null) {
//       organisationEmployee = <OrganisationEmployee>[];
//       json['organisationEmployee'].forEach((v) {
//         organisationEmployee!.add(new OrganisationEmployee.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     if (this.organisationOwners != null) {
//       data['organisationOwners'] =
//           this.organisationOwners!.map((v) => v.toJson()).toList();
//     }
//     if (this.authorizersEmployee != null) {
//       data['authorizersEmployee'] =
//           this.authorizersEmployee!.map((v) => v.toJson()).toList();
//     }
//     data['registrationNumber'] = this.registrationNumber;
//     data['registrationAttachment'] = this.registrationAttachment;
//     data['registrationDate'] = this.registrationDate;
//     if (this.address != null) {
//       data['address'] = this.address!.toJson();
//     }
//     if (this.organisationType != null) {
//       data['organisationType'] = this.organisationType!.toJson();
//     }
//     if (this.organisationEmployee != null) {
//       data['organisationEmployee'] =
//           this.organisationEmployee!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class OrganisationEmployee {
//   String? id;
//   String? name;
//   String? phoneNumber;
//   int? identifyType;
//   String? identifyNumber;
//   String? attachment;

//   OrganisationEmployee(
//       {this.id,
//       this.name,
//       this.phoneNumber,
//       this.identifyType,
//       this.identifyNumber,
//       this.attachment});

//   OrganisationEmployee.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     phoneNumber = json['phoneNumber'];
//     identifyType = json['identifyType'];
//     identifyNumber = json['identifyNumber'];
//     attachment = json['attachment'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['phoneNumber'] = this.phoneNumber;
//     data['identifyType'] = this.identifyType;
//     data['identifyNumber'] = this.identifyNumber;
//     data['attachment'] = this.attachment;
//     return data;
//   }
// }
