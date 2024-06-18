bool unitTest4(String password) {
  return password.length >= 6 &&
      RegExp(r'^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+\-=\[\]{};:"\\|,.<>\/?~]).*$')
          .hasMatch(password);
}
