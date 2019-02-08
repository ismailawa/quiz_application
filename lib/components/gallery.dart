import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Gallery extends StatelessWidget {
  static const String routeName = "/GalleryPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          backgroundColor: Colors.white,
          elevation: 1.1,
          title: Center(
            child: Text(
              "Gallery",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40.0,
                  fontFamily: 'RemachineScript',
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.new_releases),
              onPressed: () {},
              color: Colors.blue,
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 250.0,
              child: Carousel(
                boxFit: BoxFit.cover,
                images: [
                  AssetImage("assets/images/c1.jpg"),
                  AssetImage("assets/images/c2.jpg"),
                  AssetImage("assets/images/c3.jpg"),
                  AssetImage("assets/images/c4.jpg"),
                  AssetImage("assets/images/c5.jpg")
                ],
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                autoplay: true,
              ),
            ),
            Text("Categories"),
          ],
        ));
  }
}
