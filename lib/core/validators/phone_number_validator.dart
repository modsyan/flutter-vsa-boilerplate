
mixin PhoneNumberValidator {
  bool isValidPhone(phone) {
    return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(phone);
  }
}