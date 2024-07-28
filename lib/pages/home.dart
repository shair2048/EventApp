import 'package:event_app/models/events_model.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<EventsModel> events = [];

  void _getEvents() {
    events = EventsModel.getEvents();
  }

  @override
  Widget build(BuildContext context) {
    _getEvents();

    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, left: 20),
            child: Text(
              'Trending Events',
              style: TextStyle(
                fontSize: 14, 
                color: Colors.black,
                fontWeight: FontWeight.w600),
            )
          ),
          SizedBox(height: 16),
          Container(
            height: 186,
            child: ListView.separated(
              itemCount: events.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              separatorBuilder: (context, index) => SizedBox(width: 25,),
              itemBuilder: (context, index) {
                return Container(
                  width: 346,
                  decoration: BoxDecoration(
                    color: events[index].colorBox,
                    borderRadius: BorderRadius.circular(12),
                  ), 
                  // child: SvgPicture.asset(
                  //   events[index].eventImgPath,
                  //   height: 186,
                  //   width: 346,
                  // )
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(12),
                  //   child: Image.asset(
                  //     events[index].eventImgPath,
                  //     fit: BoxFit.cover,
                  //     height: 186,
                  //     width: 346,
                  //   ),
                  // ),
                );
              },
            )
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'EventApp',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: false,
      // titleSpacing: 10.0,
      
      // leading: GestureDetector(
      //   onTap: () {

      //   },
      //   child: Container(
      //     margin: EdgeInsets.all(10),
      //     alignment: Alignment.center,
      //     decoration: BoxDecoration(
      //       color: Color(0xffF7F8F8),
      //       borderRadius: BorderRadius.circular(10)
      //     ),
      //     child: SvgPicture.asset(
      //       'assets/icons/arrow_left.svg',
      //       height: 20,
      //       width: 20,
      //     ),
      //   ),
      // ),
      actions: [
        GestureDetector(
          onTap: () {

          },
          child: Container(
            margin: EdgeInsets.all(10),
            width: 37,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: SvgPicture.asset(
              'assets/icons/notification.svg',
              height: 20,
              width: 20,
            ),
          ),
        )
      ],
    );
  }
}