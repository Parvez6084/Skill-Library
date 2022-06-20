
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_library/model/course_mordel.dart';



class CourseCard extends GetView {
  final PopularCoursesData item;
  const CourseCard({Key? key,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var url = "https://picsum.photos/200";
    return Container(
      margin: const EdgeInsets.all(8),
      width: 320,
      decoration:  BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 1,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8),),
      ),
      child:  Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(6),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),
                child: Image.network(url,width: 320,height: 180,fit: BoxFit.cover,),
              ),
            ),
          ),
          SizedBox(
            height: 90,
            child: Stack(
              children: [
                Positioned(
                  top: 8,
                  left: 16,
                  right: 8,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( item.title!, style: const TextStyle(color: Colors.indigo, fontWeight: FontWeight.w500,fontSize: 16),),
                      Text('By ${item.author!}', style: const TextStyle(color: Colors.blueGrey,),),
                    ],),
                ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 4,right: 8),
                          decoration:  BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 1,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(Radius.circular(4),),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.star,color: Colors.yellow,),
                              const SizedBox(height: 16),
                              Text(item.rating!.avgRating!),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text('(${item.rating!.totalGivenBy!})'),
                      ],
                    ),
                  ),
                 Positioned(
                   right: 30,
                  bottom: 10,
                  child: Text('${item.fees!.currencySymbol!} ${item.fees!.value!}',
                    style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),)
              ],
            ),
          )
        ],
      ),
    );
  }
}