import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class Posts extends StatefulWidget {
  String name;
  int hrs;
  String iconURL;
  String imageURL;
  int likes;
  int comments;
  int shares;
  Posts(
      {this.name,
      this.hrs,
      this.iconURL,
      this.imageURL,
      this.likes,
      this.comments,
      this.shares});

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    double px = 1 / pixelRatio;

    BubbleStyle styleSomebody = BubbleStyle(
      nip: BubbleNip.leftTop,
      color: Colors.white60,
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 1.0, right: 0.0),
      alignment: Alignment.topLeft,
    );

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
                      widget.iconURL,
                      width: 35.0,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 8.0, 1.0),
                        child: Text(widget.name,
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
                                child: Text("${widget.hrs} hrs ",
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
              Image.network(widget.imageURL),
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
                    child: Text(" ${widget.likes}"),
                  ),
                  Spacer(),
                  Text("${widget.comments} Comments")
                ],
              ),
              Container(
                height: 0.4,
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                decoration: BoxDecoration(color: Colors.black38),
              ),
              Row(
                children: [
                  Icon(
                    Icons.thumb_up_outlined,
                    size: 18.0,
                  ),
                  Text("  ${widget.likes} Liked"),
                  Spacer(),
                  Icon(
                    Icons.favorite_outline,
                    size: 18.0,
                  ),
                  Text("  ${widget.comments} Comments"),
                  Spacer(),
                  Icon(
                    Icons.share_outlined,
                    size: 18.0,
                  ),
                  Text("  ${widget.shares} Share"),
                ],
              ),
              Container(
                height: 0.4,
                margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                decoration: BoxDecoration(color: Colors.black38),
              ),
              Row(
                children: [
                  Text("View 8 more comments"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.network(
                        "http://demo.foxthemes.net/socialitehtml/assets/images/avatars/avatar-5.jpg",
                        width: 35.0,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-110.0,
                          child: Bubble(
                            style: styleSomebody,
                            child: Text(
                                'Ut wisi enim ad minim laoreet dolore magna aliquam erat'),
                          ),
                        ),
                        
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.network(
                        "http://demo.foxthemes.net/socialitehtml/assets/images/avatars/avatar-2.jpg",
                        width: 35.0,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-110.0,
                          child: Bubble(
                            style: styleSomebody,
                            child: Text(
                                'Ut wisi enim ad minim laoreet dolore David !'),
                          ),
                        ),
                        
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
