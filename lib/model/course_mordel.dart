import 'dart:convert';

Course courseFromJson(String str) => Course.fromJson(json.decode(str));

String courseToJson(Course data) => json.encode(data.toJson());

class Course {

  Categoies? categoies;
  PopularCourses? popularCourses;
  Categoies? tutors;

  Course({ this.categoies, this.popularCourses, this.tutors});
  factory Course.fromJson(Map<String, dynamic> json) => Course(
    categoies: Categoies.fromJson(json["categoies"]),
    popularCourses: PopularCourses.fromJson(json["popular_courses"]),
    tutors: Categoies.fromJson(json["tutors"]),
  );
  Map<String, dynamic> toJson() => {
    "categoies": categoies?.toJson(),
    "popular_courses": popularCourses?.toJson(),
    "tutors": tutors?.toJson(),
  };
}

class Categoies {

  List<CategoiesData>? data;
  int? total;

  Categoies({ this.data, this.total});
  factory Categoies.fromJson(Map<String, dynamic> json) => Categoies(
    data: List<CategoiesData>.from(json["data"].map((x) => CategoiesData.fromJson(x))),
    total: json["total"],);
  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    "total": total,
  };
}

class CategoiesData {
  String? image;
  String? name;

  CategoiesData({this.image, this.name,});
  factory CategoiesData.fromJson(Map<String, dynamic> json) => CategoiesData(
    image: json["image"],
    name: json["name"],
  );
  Map<String, dynamic> toJson() => {
    "image": image,
    "name": name,
  };
}

class PopularCourses {

  List<PopularCoursesData>? data;
  int? total;

  PopularCourses({this.data, this.total,});
  factory PopularCourses.fromJson(Map<String, dynamic> json) => PopularCourses(
    data: List<PopularCoursesData>.from(json["data"].map((x) => PopularCoursesData.fromJson(x))),
    total: json["total"],
  );
  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    "total": total,
  };
}

class PopularCoursesData {

  String? author;
  Fees? fees;
  Rating? rating;
  String? title;

  PopularCoursesData({ this.author, this.fees, this.rating, this.title});
  factory PopularCoursesData.fromJson(Map<String, dynamic> json) => PopularCoursesData(
    author: json["author"],
    fees: Fees.fromJson(json["fees"]),
    rating: Rating.fromJson(json["rating"]),
    title: json["title"],
  );
  Map<String, dynamic> toJson() => {
    "author": author,
    "fees": fees?.toJson(),
    "rating": rating?.toJson(),
    "title": title,
  };

}

class Fees {
  String? currency;
  String? currencySymbol;
  String? value;

  Fees({this.currency, this.currencySymbol, this.value,});
  factory Fees.fromJson(Map<String, dynamic> json) => Fees(
    currency: json["currency"],
    currencySymbol: json["currency_symbol"],
    value: json["value"],
  );
  Map<String, dynamic> toJson() => {
    "currency": currency,
    "currency_symbol": currencySymbol,
    "value": value,
  };
}

class Rating {
  String? avgRating;
  String? totalGivenBy;

  Rating({this.avgRating, this.totalGivenBy,});
  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    avgRating: json["avg_rating"],
    totalGivenBy: json["total_given_by"],
  );
  Map<String, dynamic> toJson() => {
    "avg_rating": avgRating,
    "total_given_by": totalGivenBy,
  };
}
