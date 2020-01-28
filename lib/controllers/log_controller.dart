import 'package:flutter/material.dart';
import 'package:flutter_social/views/my_material.dart';

class LogController extends StatefulWidget {
  _LogState createState() => _LogState();
}

class _LogState extends State<LogController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          //Notification received
          overscroll.disallowGlow();
        },
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height >= 650.0)
                ? MediaQuery.of(context).size.height
                : 650.0,
            decoration: MyGradient(startColor: base, endColor: baseAccent),
          ),
        ),
      ),
    );
  }
}
