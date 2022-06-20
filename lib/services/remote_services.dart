import 'package:http/http.dart' as http;

import '../consts/app_const.dart';
import '../model/course_mordel.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<Course> fetchCourses() async {
    var response = await client.get(Uri.parse(AppConst.baseURL));
    var jsonString = response.body;
    if (response.statusCode == 200) {
      print("successs");
     return courseFromJson(jsonString);
    }else {
      print("fail");
      return courseFromJson(jsonString);
    }
  }
}
