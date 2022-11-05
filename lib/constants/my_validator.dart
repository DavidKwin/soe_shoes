String? passwordValidator(String? value) {
  if (value!.isEmpty) {
    return "Password is required";
  } else if (value!.length <= 6) {
    return "Password must be of 6 characters";
  }
  return null;
}

String? confirmPasswordValidator(String? confirmPassword, String? password) {
  if (confirmPassword!.isEmpty) {
    return "Password is required";
  } else if (confirmPassword!.length <= 6) {
    return "Password must be of 6 characters";
  } else if (confirmPassword != password) {
    return "Password do not match";
  }
  return null;
}

String? emailValidator(String? email) {
  RegExp regExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  if (!regExp.hasMatch(email!)) {
    return "Invalid email";
  }
  return null;
}
