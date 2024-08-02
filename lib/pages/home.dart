import 'package:event_app/models/events_model.dart';
import 'package:event_app/models/nearby_events_model.dart';
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
  List<NearbyEvents> nearbyEvents = [];

  @override
  void initState() {
    super.initState();
    _getEvents();
  }

  void _getEvents() {
    setState(() {
      events = EventsModel.getEvents();
      nearbyEvents = NearbyEvents.getEvents();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _popularEvents(),
          SizedBox(height: 40),
          // _upcomingEvents(),
          _nearbyEvents()
        ],
      ),
    );
  }

  Column _nearbyEvents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nearby Events',
                style: TextStyle(
                  fontSize: 14, 
                  fontWeight: FontWeight.w600
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 203,
          // color: Colors.green,
          child: ListView.separated(
            itemCount: nearbyEvents.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),
            separatorBuilder: (context, index) => SizedBox(width: 16),
            itemBuilder: (context, index) {
              return Container(
                width: 166,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.08),
                      blurRadius: 10,
                      spreadRadius: 0.0
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                      height: 102,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/images/foster-lake.png'),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(height: 9),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nearbyEvents[index].eventName,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/Pin_light.svg',
                                height: 11,
                                width: 11,
                                colorFilter: ColorFilter.mode(Color(0xff2D264B).withOpacity(0.5), BlendMode.srcIn),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  nearbyEvents[index].location,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1
                                ),
                              )
                            ]
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/Calendar_light.svg',
                                height: 11,
                                width: 11,
                                colorFilter: ColorFilter.mode(Color(0xff2D264B).withOpacity(0.5), BlendMode.srcIn),
                              ),
                              SizedBox(width: 8),
                              Text(
                                  nearbyEvents[index].date,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1
                                ),
                            ]
                          ),
                          SizedBox(height: 9),
                          Text(
                            nearbyEvents[index].price,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xffEC441E),
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          ),
        )
      ],
    );
  }

  Column _popularEvents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 40, left: 20),
          child: Text(
            'Popular Events',
            style: TextStyle(
              fontSize: 14, 
              color: Colors.black,
              fontWeight: FontWeight.w600
            ),
          )
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 186,
          child: ListView.separated(
            itemCount: events.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),
            separatorBuilder: (context, index) => SizedBox(width: 12),
            itemBuilder: (context, index) {
              return Container(
                width: 346,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/images/foster-lake.png'),
                    // image: AssetImage(events[index].eventImgPath),
                    fit: BoxFit.cover
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 7, bottom: 8, right: 7),
                      height: 90,
                      width: 332,
                      decoration: BoxDecoration(
                        color: Color(0xFF2D264B).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.only(left: 13),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    events[index].eventName,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis, // Hiển thị dấu ba chấm nếu văn bản quá dài
                                    maxLines: 1
                                  ),
                                  SizedBox(height: 6),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/Pin_light.svg',
                                        height: 12,
                                        width: 12,
                                        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                      ),
                                      SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          events[index].location,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                          overflow: TextOverflow.ellipsis, 
                                          maxLines: 1
                                        )
                                      )
                                    ]
                                  ),
                                  SizedBox(height: 6),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/Calendar_light.svg',
                                        height: 12,
                                        width: 12,
                                        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                      ),
                                      SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          events[index].date,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                          overflow: TextOverflow.ellipsis, 
                                          maxLines: 1
                                        )
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ),
                          SizedBox(height: 20),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(right: 13),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    events[index].price,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis, 
                                    maxLines: 1
                                  ),
                                ],
                              ),
                            )
                          ),
                        ],
                      )
                    )
                  ],
                ),
              );
            },
          )
        ),
      ],
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
              'assets/icons/Bell_light.svg',
              height: 20,
              width: 20,
            ),
          ),
        )
      ],
    );
  }
}