import "package:flutter/material.dart";

class CategoriesModel {
  String categoryName;
  Color boxColor;

  CategoriesModel({
    required this.categoryName,
    required this.boxColor,
  });

  static List<CategoriesModel> getEvents() {
    List<CategoriesModel> categories = [];

    categories.add(
      CategoriesModel(
        categoryName: "Music Concert",
        boxColor: Color(0xffEDE9FF),
      )
    );
    categories.add(
      CategoriesModel(
        categoryName: "Exhibition",
        boxColor: Color(0xffFFF5D7),
      )
    );
    categories.add(
      CategoriesModel(
        categoryName: "Stand Up Show",
        boxColor: Color(0xffFFECEC),
      )
    );
    categories.add(
      CategoriesModel(
        categoryName: "Theater",
        boxColor: Color(0xffE4FFEA),
      )
    );

    // events.add(
    //   CategoryModel(
    //     categoryName: "Event 5",
    //     colorBox: Colors.orange,
    //   )
    // );

    return categories;
  }
}