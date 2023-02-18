import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {


  List<String>   _images=[
    "images/headphone.png",
    "images/headphone.png",
    "images/headphone.png",
    "images/headphone.png",
];
  List<String>   _title=[
    "Canon EOS 30D",
    "Canon EOS 30D",
    "Canon EOS 30D",
    "Canon EOS 30D",
  ];



  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      "images/1.png",
      "images/headphone.png",
      "images/headphone.png",
      "images/headphone.png",
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(item, fit: BoxFit.cover, width: 1000.0),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    "deal of the day",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )),
      ),
    ))
        .toList();

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(22.0),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Color(0xffDEDEDE),
              filled: true,
              hintText: "Search for products...",
              prefixIcon: Icon(Icons.search,size: 30,color: Color(0xff6369E8),),
              suffixIcon: Icon(Icons.document_scanner_rounded,size: 30,color: Color(0xff6369E8),),
              border: InputBorder.none
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 42,),
          Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                  autoPlay: true,
                ),
                items: imageSliders,
              )),
          SizedBox(height: 6,),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("Top Picks",
                style: GoogleFonts.roboto(
                textStyle: TextStyle(

                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                )
              ),),
            ),
          ),
          SizedBox(height: 2,),
          Container(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _title.length,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.all(11),
                    height: 222,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: LinearGradient(colors: [
                        Color(0xff4776E6),
                        Color(0xff8E54E9)
                      ])
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 14,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Color(0xffFFC567),),
                              Text("4.5",style: TextStyle(
                                color: Colors.white
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Image.asset(_images[index],),

                        ),
                        SizedBox(height: 6,),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(_title[index],style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              wordSpacing: 5,
                            ),),
                          ),
                        ),
                        SizedBox(height: 11,),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text("16000",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              wordSpacing: 5,
                            ),),
                          ),
                        ),

                      ],
                    )
                  );
                }

            )

          ),
        ],
      ),


    );
  }
}
