import "package:flutter/material.dart";

class EventsModel {
  String eventName;
  String location;
  String date;
  String price;
  String eventImgPath;
  Color colorBox;

  EventsModel({
    required this.eventName,
    required this.location,
    required this.date,
    required this.price,
    required this.eventImgPath,
    required this.colorBox,
  });

  static List<EventsModel> getEvents() {
    List<EventsModel> events = [];

    events.add(
      EventsModel(
        eventName: "Event 1",
        location: "Location 1",
        date: "2020-01-01",
        price: "100",
        eventImgPath: "assets/images/ex_event.png",
        colorBox: Colors.blue,
      )
    );
    events.add(
      EventsModel(
        eventName: "Event 2",
        location: "Location 2",
        date: "2020-01-01",
        price: "200",
        eventImgPath: "assets/images/ex_event.png",
        colorBox: Colors.yellow,
      )
    );
    events.add(
      EventsModel(
        eventName: "Event 3",
        location: "Location 3",
        date: "2020-01-01",
        price: "300",
        eventImgPath: "assets/images/ex_event.png",
        colorBox: Colors.pink,
      )
    );
    events.add(
      EventsModel(
        eventName: "Event 4",
        location: "Location 4",
        date: "2020-01-01",
        price: "400",
        eventImgPath: "assets/images/ex_event.png",
        colorBox: Colors.green,
      )
    );

    events.add(
      EventsModel(
        eventName: "Event 5",
        location: "Location 5",
        date: "2020-01-01",
        price: "500",
        eventImgPath: "assets/images/ex_event.png",
        colorBox: Colors.orange,
      )
    );

    return events;
  }
}