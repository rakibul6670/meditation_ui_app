class Validator {
  

  //====================== Name Validator =====================
  static String? nameValidator(String? name) {
    if (name == null || name.trim().isEmpty) {
      return "Please enter your name";
    } else if (name.trim().length < 3) {
      return "Name must be at least 3 characters long";
    }
    
    return null;
  }

  //====================== Email Validator =====================
  static String? emailValidator(String? email) {
    if (email == null || email.trim().isEmpty) {
      return "Please enter your email";
    }

    // Simple Email Regex Pattern
    String pattern = r'^[^@]+@[^@]+\.[^@]+';
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(email.trim())) {
      return "Please enter a valid email address";
    }
  
    
    return null;
  }

  //====================== Password Validator =====================
  static String? passwordValidator(String? password) {
    if (password == null || password.isEmpty) {
      return "Please enter your password";
    } else if (password.length < 6) {
      return "Password must be at least 6 characters long";
    } else if (!password.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at least one uppercase letter";
    } else if (!password.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number";
    }
    return null;
  }
}
