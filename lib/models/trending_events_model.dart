import "package:flutter/material.dart";

class TrendingEventsModel {
  String name;
  Color colorBox;

  TrendingEventsModel({
    required this.name,
    required this.colorBox,
  });

  List<TrendingEventsModel> getTrendingEvents() {
    List<TrendingEventsModel> trendingEvents = [];

    trendingEvents.add(
      TrendingEventsModel(
        name: "Event 1",
        colorBox: Colors.blue,
      )
    );
    trendingEvents.add(
      TrendingEventsModel(
        name: "Event 2",
        colorBox: Colors.yellow,
      )
    );
    trendingEvents.add(
      TrendingEventsModel(
        name: "Event 3",
        colorBox: Colors.pink,
      )
    );
    trendingEvents.add(
      TrendingEventsModel(
        name: "Event 4",
        colorBox: Colors.green,
      )
    );

    trendingEvents.add(
      TrendingEventsModel(
        name: "Event 5",
        colorBox: Colors.orange,
      )
    );

    return trendingEvents;
  }
}