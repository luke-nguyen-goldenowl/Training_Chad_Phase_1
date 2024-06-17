bool unitTest4(String password) {
  if (password.length < 6) return false;

  bool hasNumber = false, hasSpecialChar = false, hasLetter = false;
  int size = password.length;
  String specialChars = r'!@#$%^&*(),.?":{}|<>';

  for (int i = 0; i < size; i++) {
    if (int.tryParse(password[i]) != null) hasNumber = true;
    if (specialChars.contains(password[i])) hasSpecialChar = true;
    if (RegExp(r'^[a-zA-Z]$').hasMatch(password[i])) hasLetter = true;
    if (hasNumber && hasSpecialChar && hasLetter) return true;
  }
  return hasNumber && hasSpecialChar && hasLetter;
}