class SafeSafai{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required.';
    }

    // Regular Expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty){
      return 'Password is required.';
    }

    // Check for minimum password length
    if(value.length < 6){
      return 'Password must be at least 6 charactor long';
    }

    // Check for UpperCase letters
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contain at least one Uppercase Latter from "A-Z"';
    }

    // Check for Numbers
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must contain at least one Number from "0-9"';
    }

    // Check for Special Characters
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Password must contain at leat one Special Character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Phone Number is required';
    }

    // Regular Expression for phone number validation (assuming a 10 digit US phone number format)
    final phoneRegExp = RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (Required 10 digit number)';
    }

    return null;
  }

  // more custom validations can be added according to the specific requirments
}