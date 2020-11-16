import 'package:flutter/material.dart';
import 'package:testapp/posts.dart';
import './slider.dart';
import './statusBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Archivo'),
      home: Scaffold(
          appBar: AppBar(
            iconTheme: new IconThemeData(color: Color(0xFFb5b5b5)),
            backgroundColor: Colors.white,
            title: Image.asset(
              "assets/images/socialiteLogo.png",
              width: 120.0,
            ),
          ),
          drawer: Drawer(
              child: Column(
            children: [Text("Test")],
          )),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ImageSlider(),
                  SizedBox(
                    height: 20.0,
                  ),
                  StatusBox(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Posts(
                      name: "Hamse Ali",
                      hrs: 6,
                      iconURL: "assets/avatar/avatar-2.jpg",
                      imageURL:
                          "http://demo.foxthemes.net/socialitehtml/assets/images/post/img-1.jpg",
                      likes: 13,
                      comments: 24,
                      shares: 20),
                  SizedBox(
                    height: 20.0,
                  ),
                  Posts(
                      name: "Erica Jones",
                      hrs: 5,
                      iconURL: "assets/avatar/avatar-3.jpg",
                      imageURL:
                          "http://demo.foxthemes.net/socialitehtml/assets/images/post/img-4.jpg",
                      likes: 32,
                      comments: 55,
                      shares: 60),
                       SizedBox(
                    height: 20.0,
                  ),
                  Posts(
                      name: "Dennis Han",
                      hrs: 5,
                      iconURL: "assets/avatar/avatar-4.jpg",
                      imageURL:
                          "http://demo.foxthemes.net/socialitehtml/assets/images/post/img-2.jpg",
                      likes: 12,
                      comments: 31,
                      shares: 6),
                ],
              ),
            ),
          )),
    );
  }
}
