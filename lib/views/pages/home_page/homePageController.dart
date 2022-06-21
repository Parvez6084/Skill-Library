import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_library/model/course_mordel.dart';
import 'package:skill_library/services/remote_services.dart';

class HomePageController extends GetxController {
  var searchController = TextEditingController();

  var tutor = <CategoiesData>[].obs;
  var category = <CategoiesData>[].obs;
  var courseModule = <PopularCoursesData>[].obs;

  var totalTutor = 0.obs;
  var totalCategory = 0.obs;
  var totalCourse = 0.obs;
  var isLoad = true.obs;

  @override
  void onInit() {
    fetchCourseData();
    super.onInit();
  }

  void fetchCourseData() async {
    try {
      isLoad(true);
      var course = await RemoteServices.fetchCourses();
      if (course != null) {

        tutor.addAll(course.tutors!.data!);
        totalTutor.value = course.tutors!.total!;

        category.addAll(course.categoies!.data!);
        totalCategory.value = course.categoies!.total!;

        courseModule.addAll(course.popularCourses!.data!);
        totalCourse.value = course.popularCourses!.total!;
      }
    } finally {
      isLoad(false);
    }
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

}
