

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../consts/app_fonts.dart';
import 'favoritePageController.dart';

class FavoritePage extends GetView<FavoritePageController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Favorite List', style: TextStyle(fontSize: 24, color: Colors.black, fontFamily: AppFonts.yesteryear, fontWeight: FontWeight.w400),),
        actions:[
          IconButton(
           onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
      body: SizedBox(
        height:size.height *.9,
        child: const Center(child: Text('No Data',style: TextStyle(fontWeight: FontWeight.bold),))
      ),
    );
  }
}
