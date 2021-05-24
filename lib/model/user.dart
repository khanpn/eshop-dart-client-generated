part of swagger.api;

class User {
  /* The user's id */
  int id = null;
/* The user's first name */
  String firstName = null;
/* The user's last name */
  String lastName = null;
/* The user's gender */
  String gender = null;
  //enum genderEnum {  FEMALE,  MALE,  UNKNOWN,  };
/* The user's email */
  String email = null;

  PhoneNumber mobilePhone = null;

  String state = null;
  //enum stateEnum {  ACTIVE,  BLOCKED,  DELETED,  };

  String language = null;
  //enum languageEnum {  VI,  EN,  };

  Country country = null;

  User();

  @override
  String toString() {
    return 'User[id=$id, firstName=$firstName, lastName=$lastName, gender=$gender, email=$email, mobilePhone=$mobilePhone, state=$state, language=$language, country=$country, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    gender = json['gender'];
    email = json['email'];
    mobilePhone = new PhoneNumber.fromJson(json['mobilePhone']);
    state = json['state'];
    language = json['language'];
    country = new Country.fromJson(json['country']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'email': email,
      'mobilePhone': mobilePhone,
      'state': state,
      'language': language,
      'country': country
     };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}
