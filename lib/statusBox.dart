import 'package:flutter/material.dart';

class StatusBox extends StatefulWidget {
  const StatusBox({
    Key key,
  }) : super(key: key);

  @override
  _StatusBoxState createState() => _StatusBoxState();
}

class _StatusBoxState extends State<StatusBox> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Padding(
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
          height: 150.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 15.0, 10.0, 2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/avatar/avatar-2.jpg",
                          height: 40.0,
                          width: 40.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 10.0),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: new BorderRadius.all(
                                new Radius.circular(25.7))),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.red,
                            hintText: "What's Your Mind ? Dennis!",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0, right: 14.0),
                          ),
                          style: TextStyle(
                            fontSize: 18.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Archivo",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 0.4,
                  margin: EdgeInsets.fromLTRB(10.0, 15.0, 15.0, 10.0),
                  decoration: BoxDecoration(color: Colors.black38),
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.image,color: Color(0xFFffdf61),size: 30.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Photo/Video",style: TextStyle(fontFamily: 'Archivo',fontSize: 16.0,fontWeight: FontWeight.w600),),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("😲",style: TextStyle(fontSize: 24.0),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Feeling/Activity",style: TextStyle(fontFamily: 'Archivo',fontSize: 16.0,fontWeight: FontWeight.w600),),
                  )

                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
