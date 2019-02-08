import 'package:flutter/material.dart';
import 'package:quiz_application/components/menu.dart';

class HomePage extends StatelessWidget {

  static const String routeName = "/homePage";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          backgroundColor: Colors.white,
          elevation: 1.1,
          title: Center(
            child: Text(
              "Home",
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
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Ismailawa"),
                accountEmail: Text("ismailawa.aliyu@gmail.com"),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: menus.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            var menu = menus[index];
            return Menu(
              imageUrl: menu.imageUrl,
              title: menu.title,
            );
          },
        )
    );
  }
}

