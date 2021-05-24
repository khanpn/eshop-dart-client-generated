part of swagger.api;

class Country {
  /* Country name */
  String name = null;
/* Numeric that is represented for a country. ie. 704, 276, 250, 380, etc. */
  String numeric = null;
/* Country iso code has 2 charecters. ie. VN, DE, FR, IT, etc. */
  String iso2Code = null;
/* Country iso code has 3 charecters. ie. VNM, DEU, FRA, ITA, etc. */
  String iso3Code = null;

  Country();

  @override
  String toString() {
    return 'Country[name=$name, numeric=$numeric, iso2Code=$iso2Code, iso3Code=$iso3Code, ]';
  }

  Country.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    numeric = json['numeric'];
    iso2Code = json['iso2Code'];
    iso3Code = json['iso3Code'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'numeric': numeric,
      'iso2Code': iso2Code,
      'iso3Code': iso3Code
     };
  }

  static List<Country> listFromJson(List<dynamic> json) {
    return json == null ? new List<Country>() : json.map((value) => new Country.fromJson(value)).toList();
  }

  static Map<String, Country> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Country>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Country.fromJson(value));
    }
    return map;
  }
}
