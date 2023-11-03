class UserModel {
  bool? status;
  User? user;
  List<Null>? authorizationUser;
  String? message;
  String? token;

  UserModel(
      {this.status,
      this.user,
      this.authorizationUser,
      this.message,
      this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    user = json['user'] != null ?  User.fromJson(json['user']) : null;
    message = json['message'];
    token = json['token'];
  }
}

class User {
  int? id;
  String? userName;
  String? userSurname;
  String? userSex;
  String? userImage;
  String? userDatenais;
  String? userDocument;
  String? userDescription;
  String? userAdress;
  String? userCodePostal;
  String? userCni;
  String? userCity;
  String? mobile;
  String? mobileVerifiedAt;
  String? userPhone;
  String? phoneVerified;
  int? userVerify;
  String? userCountry;
  String? emailVerifiedAt;
  String? driverLicensesNumber;
  String? driverLicensesCountry;
  String? driverLicensesDate;
  String? cniNumber;
  String? cniCountry;
  String? cniDate;
  String? emailVerified;
  String? email;
  String? uid;
  String? providerId;
  String? userStatus;
  String? userProfil;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.userName,
      this.userSurname,
      this.userSex,
      this.userImage,
      this.userDatenais,
      this.userDocument,
      this.userDescription,
      this.userAdress,
      this.userCodePostal,
      this.userCni,
      this.userCity,
      this.mobile,
      this.mobileVerifiedAt,
      this.userPhone,
      this.phoneVerified,
      this.userVerify,
      this.userCountry,
      this.emailVerifiedAt,
      this.driverLicensesNumber,
      this.driverLicensesCountry,
      this.driverLicensesDate,
      this.cniNumber,
      this.cniCountry,
      this.cniDate,
      this.emailVerified,
      this.email,
      this.uid,
      this.providerId,
      this.userStatus,
      this.userProfil,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    userSurname = json['user_surname'];
    userSex = json['user_sex'];
    userImage = json['user_image'];
    userDatenais = json['user_datenais'];
    userDocument = json['user_document'];
    userDescription = json['user_description'];
    userAdress = json['user_adress'];
    userCodePostal = json['user_code_postal'];
    userCni = json['user_cni'];
    userCity = json['user_city'];
    mobile = json['mobile'];
    mobileVerifiedAt = json['mobile_verified_at'];
    userPhone = json['user_phone'];
    phoneVerified = json['phoneVerified'];
    userVerify = json['user_verify'];
    userCountry = json['user_country'];
    emailVerifiedAt = json['email_verified_at'];
    driverLicensesNumber = json['driver_licenses_number'];
    driverLicensesCountry = json['driver_licenses_country'];
    driverLicensesDate = json['driver_licenses_date'];
    cniNumber = json['cni_number'];
    cniCountry = json['cni_country'];
    cniDate = json['cni_date'];
    emailVerified = json['emailVerified'];
    email = json['email'];
    uid = json['uid'];
    providerId = json['providerId'];
    userStatus = json['user_status'];
    userProfil = json['user_profil'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_name'] = this.userName;
    data['user_surname'] = this.userSurname;
    data['user_sex'] = this.userSex;
    data['user_image'] = this.userImage;
    data['user_datenais'] = this.userDatenais;
    data['user_document'] = this.userDocument;
    data['user_description'] = this.userDescription;
    data['user_adress'] = this.userAdress;
    data['user_code_postal'] = this.userCodePostal;
    data['user_cni'] = this.userCni;
    data['user_city'] = this.userCity;
    data['mobile'] = this.mobile;
    data['mobile_verified_at'] = this.mobileVerifiedAt;
    data['user_phone'] = this.userPhone;
    data['phoneVerified'] = this.phoneVerified;
    data['user_verify'] = this.userVerify;
    data['user_country'] = this.userCountry;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['driver_licenses_number'] = this.driverLicensesNumber;
    data['driver_licenses_country'] = this.driverLicensesCountry;
    data['driver_licenses_date'] = this.driverLicensesDate;
    data['cni_number'] = this.cniNumber;
    data['cni_country'] = this.cniCountry;
    data['cni_date'] = this.cniDate;
    data['emailVerified'] = this.emailVerified;
    data['email'] = this.email;
    data['uid'] = this.uid;
    data['providerId'] = this.providerId;
    data['user_status'] = this.userStatus;
    data['user_profil'] = this.userProfil;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}