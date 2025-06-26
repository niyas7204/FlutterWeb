class UserModel {
  final String id;
  final String firstName;
  final String? lastName;
  final String userName;
  final String email;
  final String mobile;
  final String? profile;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.mobile,
    required this.profile,
  });
  factory UserModel.fromjson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      firstName: json["firstName"],
      lastName: json["lastName"] ?? "",
      userName: json["userName"],
      email: json["email"],
      mobile: json["mobile"],
      profile: json["profile"] ?? "",
    );
  }

  Map<String, dynamic> tojson() {
    return {
      "id": id,
      "firstName": firstName,
      "lastName": lastName,
      "userName": userName,
      "email": email,
      "mobile": mobile,
      "profile": profile,
    };
  }

  String get fullName => '$firstName ${lastName ?? ''}';
  String get formatedNumber => formatPhoneNumber(number: mobile);
}

String formatPhoneNumber({required String number}) {
  if (number.length == 10) {
    return '${number.substring(0, 3)} ${number.substring(3, 6)} ${number.substring(6)}';
  } else if (number.length == 10) {
    return '${number.substring(0, 4)} ${number.substring(4, 7)} ${number.substring(7)}';
  }
  return number;
}
 
