import 'package:flutter/material.dart';
import 'package:flutter_social/views/my_material.dart';

class LogController extends StatefulWidget {
  _LogState createState() => _LogState();
}

class _LogState extends State<LogController> {
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    PaddingWithChild(
                        widget: Image(
                      image: logoImage,
                      height: 100.0,
                    )),
                    PaddingWithChild(
                      widget: Menu2Items(
                          item1: "Connexion",
                          item2: "Création",
                          pageController: _pageController),
                      top: 20.0,
                      bottom: 20.0,
                    ),
                    Expanded(
                      child: PageView(
                        controller: _pageController,
                        children: <Widget>[logView(0), logView(1)],
                      ),
                      flex: 2,
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }

  Widget logView(int index) {
    return Container(color: (index == 0) ? pointer : white);
  }
}
