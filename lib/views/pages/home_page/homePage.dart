import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homePageController.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CarouselSlider(
                  items: [].map((i) {
                    return Builder(builder: (BuildContext context) => Container());}).toList(),
                  options: CarouselOptions(
                    height: 240,
                    initialPage: 0,
                    viewportFraction: 1,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 16,right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Category',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700)),

                GestureDetector(
                  onTap: () {},
                  child: const Text('See all',
                      style: TextStyle(fontSize: 16,color: Colors.pink,fontWeight: FontWeight.w400)),
                )
                ],
                )),
              SizedBox(
                height:200,
                child: ListView.builder(
                    itemCount: 20,
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>Container()
                ),),
              const Align(alignment:Alignment.topLeft,child: Padding(
                padding: EdgeInsets.all(16),
                child: Text('Cards',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700)),
              )),
              SizedBox(
                height:size.height *.7,
                child: ListView.builder(
                    itemCount: 6,
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container();
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}




