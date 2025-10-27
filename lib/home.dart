
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/card_image.dart';
import 'package:places/description_place.dart';
import 'package:places/gradient_back.dart';
import 'package:places/home_app_bar.dart';
import 'package:places/review.dart';
import 'package:places/review_list.dart';

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final descriptionPlace = Container(
      margin: EdgeInsets.only(
        top: 60,
        left: 30,
        right: 30
      ),
      child: DescriptionPlace("Uyuni", 4, "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. "),
    );

    final reviewList = Container(
      margin: EdgeInsets.only(
          top: 15,
          left: 20,
          right: 15
      ),
      child: ReviewList()
    );

    final listView = ListView(
      children: <Widget>[
        GradientBack(),
        descriptionPlace,
        reviewList
      ],
    );


    return Scaffold(
      body: Stack(
        children: <Widget>[
          listView,
          HomeAppBar("Popular")
        ],
      ),
    );
  }
}