import 'package:flutter/material.dart';
import 'package:testapp/posts.dart';
import './slider.dart';
import './statusBox.dart';
import 'package:sticky_headers/sticky_headers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double size;
  double widthSize;
  bool _visible = true;
  bool textVisibility = true;

  double val = 0.0;
  double imageRadius;
  void initState() {
    super.initState();

    setState(() {
      size = 200;
      widthSize = 150;
      imageRadius = 10;
    });
  }

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
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                setState(() {
                  print(scrollNotification.metrics.pixels);
                  if ((200 - (scrollNotification.metrics.pixels)) >= 80) {
                    
                    size = 200 - (scrollNotification.metrics.pixels);
                    _visible = true;
                    val = size;
                    widthSize = (size + 57.12) / 1.714;
                    imageRadius = (size - 207.142) / (-5 / 7);
                    print("Size $size");
                    print("WIDTH $widthSize");
                    print("RADIUS $imageRadius");

                    if(size<150){
                      textVisibility=false;
                    }
                    else{
                      textVisibility=true;

                    }
                  }
                });
                return true;
              },
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  StickyHeader(
                    header: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        color: Colors.white,
                        // width: 200.0,
                        height: size + 20,
                        child: Center(
                          child: AnimatedOpacity(
                            opacity: _visible ? 1.0 : 0.0,
                            duration: Duration(milliseconds: 200),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: size,
                                      width: widthSize,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              imageRadius),
                                          child: Stack(children: [
                                            Image.asset(
                                              "assets/images/avatar-lg-1.jpg",
                                              width: widthSize,
                                              fit: BoxFit.cover,
                                            ),
                                            Container(
                                              width: 150.0,
                                              height: 200.0,
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color.fromARGB(0, 0, 0, 0),
                                                  Color.fromARGB(220, 22, 22, 3)
                                                ],
                                              )),
                                            ),
                                            Positioned(
                                                bottom: 1,
                                                left: 10,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      15.0),
                                                  child: AnimatedOpacity(
                                                    opacity:
                                                        textVisibility ? 1.0 : 0.0,
                                                    duration: Duration(
                                                        milliseconds: 500),
                                                    child: Text(
                                                      "Dennis",
                                                      style: TextStyle(
                                                          fontFamily: 'Archivo',
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                )),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            4.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Image.asset(
                                                        "assets/avatar/avatar-1.png",
                                                        height: 50.0,
                                                        width: 50.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ])),
                                    ),
                                    SizedBox(width: 20.0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )),
                    content: Container(
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
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
