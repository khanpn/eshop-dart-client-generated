part of swagger.api;

class Pagination {
  /* Returns the page content as array. */
  List<Object> content = [];
/* Returns the number of the current page. */
  int number = null;
/* Returns the number of elements currently on this page. */
  int numberOfElements = null;
/* Returns the size of the page. */
  int size = null;
/* Returns the total amount of elements. */
  int totalElements = null;
/* Returns the number of total pages. */
  int totalPages = null;

  Pagination();

  @override
  String toString() {
    return 'Pagination[content=$content, number=$number, numberOfElements=$numberOfElements, size=$size, totalElements=$totalElements, totalPages=$totalPages, ]';
  }

  Pagination.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = Object.listFromJson(json['content']);
    number = json['number'];
    numberOfElements = json['numberOfElements'];
    size = json['size'];
    totalElements = json['totalElements'];
    totalPages = json['totalPages'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'number': number,
      'numberOfElements': numberOfElements,
      'size': size,
      'totalElements': totalElements,
      'totalPages': totalPages
     };
  }

  static List<Pagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<Pagination>() : json.map((value) => new Pagination.fromJson(value)).toList();
  }

  static Map<String, Pagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Pagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Pagination.fromJson(value));
    }
    return map;
  }
}
