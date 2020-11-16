import 'package:flutter/material.dart';

final List imgList = [
  {
    "imageName": 'assets/images/avatar-lg-1.jpg',
    "userName": "Dennis",
    "buttonIcon": "assets/avatar/avatar-1.png"
  },
  {
    "imageName": 'assets/images/avatar-lg-2.jpg',
    "userName": "Jonathan",
    "buttonIcon": "assets/avatar/avatar-2.jpg"
  },
  {
    "imageName": 'assets/images/avatar-lg-3.jpg',
    "userName": "Stella",
    "buttonIcon": "assets/avatar/avatar-3.jpg"
  },
  {
    "imageName": 'assets/images/avatar-lg-4.jpg',
    "userName": "Alex",
    "buttonIcon": "assets/avatar/avatar-4.jpg"
  },
  {
    "imageName": 'assets/images/avatar-lg-5.jpg',
    "userName": "Aldrin",
    "buttonIcon": "assets/avatar/avatar-5.jpg"
  }
];

class ImageSlider extends StatelessWidget {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: imgList
            .map((item) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          item["imageName"],
                          height: 200.0,
                          width: 150.0,
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
                              child: Text(
                                item["userName"],
                                style: TextStyle(
                                  fontFamily: 'Archivo',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                              ),  

                        //       Image.asset(
                        //   item["buttonIcon"],
                        //   height: 20.0,
                        //   width: 20.0,
                        //   fit: BoxFit.cover,
                        // ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    item["buttonIcon"],
                                    height: 32.0,
                                    width: 32.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                ))
            .toList(),
      ),
    );
  }
}
