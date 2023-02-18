import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';






















class carosul_silder extends StatefulWidget {
  const carosul_silder({Key? key}) : super(key: key);

  @override
  State<carosul_silder> createState() => _carosul_silderState();
}

class _carosul_silderState extends State<carosul_silder> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      // 'https://t4.ftcdn.net/jpg/05/24/48/71/360_F_524487156_zlY3rVr6PaU7GRLtvjGd0jDk31u4zrC5.jpg',
      // 'https://www.freepnglogos.com/uploads/laptop-png/laptop-png-who-are-adventoris-4.png',
      // 'https://www.kindpng.com/picc/m/422-4225211_new-mobile-phone-png-transparent-cartoons-smart-phones.png',
      // 'https://www.freeiconspng.com/uploads/camera-icon--reality-icons--softiconsm-29.png',
      "images/headphone.png",
      "images/c1.png",
      "images/1.png",
      "images/c6.png",


    ];
    final List<String>  _text=[
      "headphone",
      "leptop",
      "Mobiles",
      "Camera"

    ];



    final List<Widget> imageSliders = imgList
        .map((item) => Container(
      child: Container(

        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),

            child: Stack(

              children: <Widget>[
                Image.asset(item, width: 1000.0,),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(

                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(100, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),

                  ),
                ),
              ],
            )),
      ),
    ))
        .toList();

    return Container(
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 2,
            autoPlay: true,
          ),
          items: imageSliders,
        ));
  }
}

