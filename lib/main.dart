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
        drawer: Drawer(child: Column(
          children: [
            Text("Test")
          ],
        )),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
                      child: Column(
              children: [
                ImageSlider(),
                SizedBox(height: 20.0,),
                StatusBox(),
                SizedBox(height: 20.0,),
                Posts()
              ],
            ),
          ),
        )
      ),
    );
  }
}

