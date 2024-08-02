import "package:flutter/material.dart";

class NearbyEvents {
  String eventName;
  String location;
  String date;
  String price;
  String eventImgPath;
  Color colorBox;

  NearbyEvents({
    required this.eventName,
    required this.location,
    required this.date,
    required this.price,
    required this.eventImgPath,
    required this.colorBox,
  });

  static List<NearbyEvents> getEvents() {
    List<NearbyEvents> nearbyEvents = [];

    nearbyEvents.add(
      NearbyEvents(
        eventName: "Event 1",
        location: "Location 1",
        date: "2020-01-01",
        price: "10000 VND",
        eventImgPath: "assets/images/ex_event.png",
        colorBox: Colors.blue,
      )
    );
    nearbyEvents.add(
      NearbyEvents(
        eventName: "Event 2",
        location: "Location 2",
        date: "2020-01-01",
        price: "10000 VND",
        eventImgPath: "assets/images/ex_event.png",
        colorBox: Colors.yellow,
      )
    );
    nearbyEvents.add(
      NearbyEvents(
        eventName: "Event 3",
        location: "Location 3",
        date: "2020-01-01",
        price: "10000 VND",
        eventImgPath: "assets/images/ex_event.png",
        colorBox: Colors.pink,
      )
    );
    nearbyEvents.add(
      NearbyEvents(
        eventName: "Event 4",
        location: "Location 4",
        date: "2020-01-01",
        price: "10000 VND",
        eventImgPath: "assets/images/ex_event.png",
        colorBox: Colors.green,
      )
    );

    nearbyEvents.add(
      NearbyEvents(
        eventName: "Event 5",
        location: "Location 5",
        date: "2020-01-01",
        price: "10000 VND",
        eventImgPath: "assets/images/ex_event.png",
        colorBox: Colors.orange,
      )
    );

    return nearbyEvents;
  }
}