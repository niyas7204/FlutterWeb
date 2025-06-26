class AuthValidation {
  static String? emailValidation({String? value}) {
    if (value == null || value.isEmpty) {
      return "Email is Required";
    }
    final emailRegExp = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    if (!emailRegExp.hasMatch(value)) {
      return "Invalid email adrees";
    }
    return null;
  }

  static String? passwordValidation({String? value}) {
    if (value == null || value.isEmpty) {
      return "password is Required";
    }
    if (value.length < 6) {
      return "At least 6 characters is required";
    }

    return null;
  }

  static String? validateEmpty({String? value, required String fieldName}) {
    if (value == null || value.isEmpty) {
      return "$fieldName is Required";
    }

    return null;
  }
}
