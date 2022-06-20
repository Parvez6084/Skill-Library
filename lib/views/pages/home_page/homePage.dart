import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_library/consts/app_images.dart';
import 'package:skill_library/views/widgets/category_widget.dart';
import 'package:skill_library/views/widgets/course_widget.dart';
import 'package:skill_library/views/widgets/textField_widget.dart';
import 'homePageController.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Obx((){return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFieldWidget(
                      controller: TextEditingController(),
                      keyboardType: TextInputType.text,
                      onChanged: (value){},
                      label: 'Find Course'
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 8,left: 16,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Popular Courses',style: TextStyle(fontSize: 18,color: Colors.indigo,fontWeight: FontWeight.w600)),
                      GestureDetector(
                        onTap: () {},
                        child:  Text('See all (${controller.totalCourse})',
                            style: TextStyle(fontSize: 14,color: Colors.indigoAccent.withOpacity(0.7),fontWeight: FontWeight.w400)),
                      )
                    ],
                  )),
              CarouselSlider(
                  items: controller.courseModule.map((item) {
                    return Builder(builder: (BuildContext context) => CourseCard(item:item));}).toList(),
                  options: CarouselOptions(
                      height: 300,
                      initialPage: 0,
                      viewportFraction: 0.8,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      aspectRatio: 2.0

                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 8,left: 16,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Category',style: TextStyle(fontSize: 18,color: Colors.indigo,fontWeight: FontWeight.w600)),
                      GestureDetector(
                        onTap: () {},
                        child: Text('See all (${controller.totalCategory.value})',
                            style: TextStyle(fontSize: 14,color: Colors.indigo.withOpacity(0.7),fontWeight: FontWeight.w400)),
                      )
                    ],
                  )),
              Container(
                margin:const EdgeInsets.only(top: 16,bottom: 16),
                height:120,
                child: ListView.builder(
                    itemCount: controller.category.length,
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        CategoryCard(item:controller.category[index])
                ),),
              Padding(
                  padding: const EdgeInsets.only(top: 8,left: 16,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Top Tutors',style: TextStyle(fontSize: 18,color: Colors.indigo,fontWeight: FontWeight.w600)),

                      GestureDetector(
                        onTap: () {},
                        child: Text('See all (${controller.totalTutor})',
                            style: TextStyle(fontSize: 14,color: Colors.indigo.withOpacity(0.7),fontWeight: FontWeight.w400)),
                      )
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(top: 16,bottom: 16),
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:controller.tutor.length, //controller.tutor.value.length,
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipOval(
                          child:Image.network(controller.tutor[index].image!, fit: BoxFit.fill),),
                      );
                    }
                ),
              )
            ],
          );}),
        ),
      ),
    );
  }

}




