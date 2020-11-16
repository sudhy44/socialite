import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  const Posts({
    Key key,
  }) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 1.0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset(
                      "assets/avatar/avatar-2.jpg",
                      width: 35.0,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 8.0, 1.0),
                        child: Text("Hamse Ali",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600)),
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 80.0,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 1.0, 1.0, 1.0),
                                child: Text("6 hrs ",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.supervised_user_circle,
                            color: Colors.black26,
                            size: 15.0,
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.keyboard_control_outlined)
                ],
              ),
              SizedBox(height: 20.0),
              Image.network(
                  "http://demo.foxthemes.net/socialitehtml/assets/images/post/img-1.jpg"),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(19.0, 2.0, 0.0, 0.0),
                          child: Image.network(
                              "http://demo.foxthemes.net/socialitehtml/assets/images/icons/reactions_love.png",
                              width: 20.0),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2.0, color: Colors.white),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Image.network(
                              "http://demo.foxthemes.net/socialitehtml/assets/images/icons/reactions_like.png",
                              width: 20.0),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4.0, 1.0, 8.0, 0.0),
                    child: Text(" 13"),
                  ),
                  Spacer(),
                  Text("24 Comments")
                ],
              ),
              Container(
                height: 0.4,
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                decoration: BoxDecoration(color: Colors.black38),
              ),
              Row(
                
                children: [
                Icon(Icons.thumb_up_outlined,size: 18.0,),
                Text("  126 Liked"),
                Spacer(),
                Icon(Icons.favorite_outline,size: 18.0,),
                Text("  24 Comments"),
                Spacer(),
                Icon(Icons.share_outlined,size: 18.0,),
                Text("  45 Share"),
              ],),
              Container(
                height: 0.4,
                margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                decoration: BoxDecoration(color: Colors.black38),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
