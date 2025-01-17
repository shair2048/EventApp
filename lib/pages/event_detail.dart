import 'package:event_app/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        backgroundColor: Colors.transparent, 
        colorFilterIcon: ColorFilter.mode(Colors.white, BlendMode.srcIn),
        showLeading: true,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _eventLabel(),
          SizedBox(height: 28),
          _eventDescription(),
          SizedBox(height: 28)
        ]
      ),
    );
  }

  Container _eventDescription() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Integer id augue iaculis, iaculis orci ut, blandit quam. Donec in elit auctor, finibus quam in, phar. Proin id ligula dictum, covalis enim ut, facilisis massa. Mauris a nisi ut sapien blandit imperdi. Interdum et malesuada fames ac ante ipsum primis in faucibs. Sed posuere egestas nunc ut tempus. Fu ipsum dolor sit amet.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
            maxLines: 6,
            textAlign: TextAlign.justify
          ),
          Text(
            'Read More',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color(0xff0092FC)
            ),
          ),
        ]
      ),
    );
  }

  Stack _eventLabel() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/foster-lake.png',
          height: 316,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.only(top: 246),
            height: 140,
            width: 346,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000).withOpacity(0.05),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Event 1',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Pin_light.svg',
                      height: 12,
                      width: 12,
                      colorFilter: ColorFilter.mode(Color(0xff2D264B).withOpacity(0.5), BlendMode.srcIn),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'location',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
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
                      height: 12,
                      width: 12,
                      colorFilter: ColorFilter.mode(Color(0xff2D264B).withOpacity(0.5), BlendMode.srcIn),
                    ),
                    SizedBox(width: 8),
                    Text(
                        'date',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1
                    ),
                  ]
                ),
                SizedBox(height: 17),
                Text(
                  '50K+ Participants',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}