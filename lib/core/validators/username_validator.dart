
mixin UsernameValidator {
  bool isValidUsername(username) {
    return RegExp(r'^[a-zA-Z0-9_]{3,16}$').hasMatch(username);
  }
}