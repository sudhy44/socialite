import 'package:flutter/gestures.dart';
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
  String iconURL = "assets/images/avatar-lg-1.jpg";
  String userName = "Dennis";
  String avatar = "assets/avatar/avatar-1.png";
  double val = 0.0;
  double imageRadius;
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

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
          drawer: Drawer(child: SideBar()),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                setState(() {
                  print("==*********==");
                  print(scrollNotification.context);
                  print(scrollNotification.context.widget);
                  print("====");

                  if ((200 - (scrollNotification.metrics.pixels)) >= 80) {
                    size = 200 - (scrollNotification.metrics.pixels);
                    _visible = true;
                    val = size;
                    widthSize = (size + 57.12) / 1.714;
                    imageRadius = (size - 207.142) / (-5 / 7);
                    print("Size $size");
                    print("WIDTH $widthSize");
                    print("RADIUS $imageRadius");

                    if (size < 150) {
                      textVisibility = false;
                    } else {
                      textVisibility = true;
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
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                              child: Row(
                                children: [
                                  ComplexSlider(
                                      size: size,
                                      widthSize: widthSize,
                                      imageRadius: imageRadius,
                                      iconURL: iconURL,
                                      textVisibility: textVisibility,
                                      userName: userName,
                                      avatar: avatar),
                                  SizedBox(width: 20.0),
                                  ComplexSlider(
                                      size: size,
                                      widthSize: widthSize,
                                      imageRadius: imageRadius,
                                      iconURL: 'assets/images/avatar-lg-2.jpg',
                                      textVisibility: textVisibility,
                                      userName: "Hamse Ali",
                                      avatar: "assets/avatar/avatar-2.jpg"),
                                  SizedBox(width: 20.0),
                                  ComplexSlider(
                                      size: size,
                                      widthSize: widthSize,
                                      imageRadius: imageRadius,
                                      iconURL: 'assets/images/avatar-lg-3.jpg',
                                      textVisibility: textVisibility,
                                      userName: "Stella",
                                      avatar: "assets/avatar/avatar-3.jpg"),
                                  SizedBox(width: 20.0),
                                  ComplexSlider(
                                      size: size,
                                      widthSize: widthSize,
                                      imageRadius: imageRadius,
                                      iconURL: 'assets/images/avatar-lg-4.jpg',
                                      textVisibility: textVisibility,
                                      userName: "Alex",
                                      avatar: "assets/avatar/avatar-4.jpg"),
                                  SizedBox(width: 20.0),
                                  ComplexSlider(
                                      size: size,
                                      widthSize: widthSize,
                                      imageRadius: imageRadius,
                                      iconURL: 'assets/images/avatar-lg-5.jpg',
                                      textVisibility: textVisibility,
                                      userName: "Aldrin",
                                      avatar: "assets/avatar/avatar-5.jpg"),
                                ],
                              ),
                            ),
                          ),
                        )),
                    content: Container(
                      color: Colors.white24,
                      child: Column(
                        children: [
                          // ImageSlider(),
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

class SideBar extends StatelessWidget {
  static const val="Home";
  const SideBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
      child: Column(
        children: [
          Options(val: val),
          SizedBox(height:10.0),
          Options(val: "To Dos"),

        ],
      ),
    );
  }
}

class Options extends StatelessWidget {
  const Options({
    Key key,
    @required this.val,
  }) : super(key: key);

  final String val;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
        child: Center(
          child: Text(
            val,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        
      ),
    );
  }
}

class ComplexSlider extends StatelessWidget {
  const ComplexSlider({
    Key key,
    @required this.size,
    @required this.widthSize,
    @required this.imageRadius,
    @required this.iconURL,
    @required this.textVisibility,
    @required this.userName,
    @required this.avatar,
  }) : super(key: key);

  final double size;
  final double widthSize;
  final double imageRadius;
  final String iconURL;
  final bool textVisibility;
  final String userName;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: widthSize,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(imageRadius),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                print("CLICKED");
                return DetailScreen(iconURL: iconURL);
              }));
            },
            child: Stack(children: [
              Image.asset(
                iconURL,
                width: widthSize,
                height: size,
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
                    padding: const EdgeInsets.all(15.0),
                    child: AnimatedOpacity(
                      opacity: textVisibility ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 500),
                      child: Text(
                        userName,
                        style: TextStyle(
                          fontFamily: 'Archivo',
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          avatar,
                          height: 50.0,
                          width: 50.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          )),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key, @required this.iconURL}) : super(key: key);
  final String iconURL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Stack(children: [
        Image.asset(
          iconURL,
          width: MediaQuery.of(context).size.width + 30,
          height: MediaQuery.of(context).size.height + 30,
          fit: BoxFit.cover,
        ),
      ]),
    ));
  }
}
