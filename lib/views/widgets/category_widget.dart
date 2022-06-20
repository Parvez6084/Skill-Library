import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_library/consts/app_colors.dart';
import 'package:skill_library/model/course_mordel.dart';

class CategoryCard extends GetView {
  final CategoiesData item;

  const CategoryCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int randomNumber = random.nextInt(7);

    return Container(
      margin: const EdgeInsets.all(8),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(item.image!), fit: BoxFit.cover),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.colorSet[randomNumber].withOpacity(0.4),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Center(
          child: Text(
            item.name!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
