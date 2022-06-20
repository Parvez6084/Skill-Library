import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_library/model/course_mordel.dart';
import 'package:skill_library/services/remote_services.dart';

class HomePageController extends GetxController {
  var searchController = TextEditingController();

  var tutor = <CategoiesData>[
    CategoiesData(image: 'https://picsum.photos/200', name: 'Finance'),
    CategoiesData(image: 'https://picsum.photos/200', name: 'Design'),
    CategoiesData(image: 'https://picsum.photos/200', name: 'Sales'),
    CategoiesData(image: 'https://picsum.photos/200', name: 'Marketing '),
    CategoiesData(image: 'https://picsum.photos/200', name: 'Marketing '),
    CategoiesData(image: 'https://picsum.photos/200', name: 'Marketing '),
    CategoiesData(image: 'https://picsum.photos/200', name: 'Marketing '),
    CategoiesData(image: 'https://picsum.photos/200', name: 'Marketing '),
  ].obs;

  var category = <CategoiesData>[
    CategoiesData(image: 'https://picsum.photos/200', name: 'Finance'),
    CategoiesData(image: 'https://picsum.photos/200', name: 'Design'),
    CategoiesData(image: 'https://picsum.photos/200', name: 'Sales'),
    CategoiesData(image: 'https://picsum.photos/200', name: 'Marketing '),
  ].obs;

  var courseModule = <PopularCoursesData>[
    PopularCoursesData(
      author: 'Parvez',
      title: 'Android Development',
      fees: Fees(currency: '200', currencySymbol: '\$', value: '300'),
      rating: Rating(avgRating: '3', totalGivenBy: '132'),
    ),
    PopularCoursesData(
      author: 'Hemail',
      title: 'Ios Development',
      fees: Fees(currency: '100', currencySymbol: '\$', value: '500'),
      rating: Rating(avgRating: '3.5', totalGivenBy: '342'),
    ),
  ].obs;

  var totalTutor = 56.obs;
  var totalCategory = 172.obs;
  var totalCourse = 12.obs;
  var isLoad = false.obs;

  @override
  void onInit() {
    // fetchCourseData();
    print('Call>>Api');
    super.onInit();
  }

  void fetchCourseData() async {
    try {
      isLoad(true);
      var course = await RemoteServices.fetchCourses();
      if (course != '') {
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
