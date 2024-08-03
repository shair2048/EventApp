import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  
  CommonAppBar({super.key, this.title = ''});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
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
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Set chiều cao = chiều cao default của flutter
}