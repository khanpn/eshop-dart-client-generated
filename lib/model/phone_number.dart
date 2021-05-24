part of swagger.api;

class PhoneNumber {
  /* Country international calling code. ie. +84 is international calling code for Vietnam */
  String countryCode = null;
/* Phone number follows international calling code. ie. 399907500 */
  String phoneNumber = null;

  PhoneNumber();

  @override
  String toString() {
    return 'PhoneNumber[countryCode=$countryCode, phoneNumber=$phoneNumber, ]';
  }

  PhoneNumber.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    countryCode = json['countryCode'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    return {
      'countryCode': countryCode,
      'phoneNumber': phoneNumber
     };
  }

  static List<PhoneNumber> listFromJson(List<dynamic> json) {
    return json == null ? new List<PhoneNumber>() : json.map((value) => new PhoneNumber.fromJson(value)).toList();
  }

  static Map<String, PhoneNumber> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PhoneNumber>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PhoneNumber.fromJson(value));
    }
    return map;
  }
}
