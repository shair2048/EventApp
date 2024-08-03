import 'package:event_app/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        backgroundColor: Colors.transparent, 
        colorFilterIcon: ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            'assets/images/foster-lake.png',
            height: 316,
            fit: BoxFit.cover,
          ),
          Container(
            // padding: const EdgeInsets.all(16),
          )
        ]
      ),

    );
  }
}