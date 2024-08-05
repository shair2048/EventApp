import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final Color backgroundColor;
  final ColorFilter colorFilterIcon;
  final bool showLeading;
  
  CommonAppBar({
    super.key, 
    this.title = '', 
    this.backgroundColor = Colors.white,
    this.colorFilterIcon = const ColorFilter.mode(Colors.black, BlendMode.srcIn),
    this.showLeading = false
  });

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
      // backgroundColor: Colors.white,
      backgroundColor: backgroundColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color(0xffff8a22),

        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (light icons)
      ),
      elevation: 0.0,
      centerTitle: false,
      // titleSpacing: 10.0,
      
      leading: showLeading
        ?GestureDetector(
          onTap: () {

          },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)
            ),
            child: SvgPicture.asset(
              'assets/icons/Expand_left_light.svg',
              height: 20,
              width: 20,
              colorFilter: colorFilterIcon,
            ),
          ),
        ):null,
      actions: [
        GestureDetector(
          onTap: () {

          },
          child: Container(
            margin: EdgeInsets.all(10),
            width: 37,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)
            ),
            child: SvgPicture.asset(
              'assets/icons/Bell_light.svg',
              height: 20,
              width: 20,
              colorFilter: colorFilterIcon,
            ),
          ),
        )
      ],
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Set chiều cao = chiều cao default của flutter
}