import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String imageUrl;
  final String title;

  Menu({this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
      child: GestureDetector(
        onTap: (){
          print("nnnnnn");
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          height: 130.0,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(imageUrl),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                            fontFamily: "RemachineScript",
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "This is where ",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14.0,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Menu> menus = [
  Menu(
    imageUrl: "assets/images/phone.png",
    title: "CHAT",
  ),
  Menu(
    imageUrl: "assets/images/friend.png",
    title: "INTENDSHIP",
  ),
  Menu(
    imageUrl: "assets/images/quiz.png",
    title: "QUIZ",
  ),
  Menu(
    imageUrl: "assets/images/activity.png",
    title: "ACTIVITIES",
  ),
  Menu(
    imageUrl: "assets/images/gallery.png",
    title: "GALLERY",
  ),
];
