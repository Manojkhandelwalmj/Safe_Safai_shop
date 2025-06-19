import 'package:intl/intl.dart';

class SafeSafaiFormatter{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_us', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)} )';
    }
    else if(phoneNumber.length == 11){
      return '(${phoneNumber.substring(0, 4)} ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)})';
    }
    // more custom phone number formats can be added according to the need.
    return phoneNumber;
  }

  static String formatInternationalPhoneNumber(String phoneNumber){
    // remove any non-digit charater from phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'),'');

    // Extract the country code from digits only
    String countryCode = '+${digitsOnly.substring(0,2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if(i == 0 && countryCode == '+1'){
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if(end < digitsOnly.length){
        formattedNumber.write(' ');
      }
      i = end;
    }
    return formattedNumber.toString();
  }
}
