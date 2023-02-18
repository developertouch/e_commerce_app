import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class bottom_navigation_bar_screen extends StatefulWidget {
  const bottom_navigation_bar_screen({Key? key}) : super(key: key);

  @override
  State<bottom_navigation_bar_screen> createState() => _bottom_navigation_bar_screenState();
}

class _bottom_navigation_bar_screenState extends State<bottom_navigation_bar_screen> {



  List<String>   _Images=[
    "images/c1.png",
    "images/1.png",
    "images/c3.png",
    "images/c4.png",
  ];
  List<String>   _Title=[
    "Canon EOS 30D",
    "Canon EOS 30D",
    "Canon EOS 30D",
    "Canon EOS 30D",
  ];



  int _currentIndex= 0;

  List<String>  _images=[
    "images/c1.png",
    "images/c2.png",
    "images/c3.png",
    "images/c4.png",
    "images/c1.png",
    "images/c6.png",
    "images/c1.png",
    "images/c1.png",
    "images/c2.png",
    "images/c3.png",
  ];

  List<String>  _title=[
    "Leptop",
    "Camera",
    "Beauty",
    "Furniture",
    "Leptop",
    "FootBall",
    "Leptop",
    "Leptop",
    "Camera",
    "Beauty",

  ];


  condition(){
    if(_currentIndex==0){
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          children: [
            Align(
              alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Deal of the Day"),
                )),
           carosul_silder(),
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
                    itemCount: _Title.length,
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
                                    Icon(Icons.star,color: Color(0xffFFC567),size: 15,),
                                    Text("4.5",style: TextStyle(
                                        color: Colors.white
                                    ),)
                                  ],
                                ),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(_Images[index],),

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
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text("Sponsored",
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
                    itemCount: _Title.length,
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
                                    Icon(Icons.star,color: Color(0xffFFC567),size: 15,),
                                    Text("4.5",style: TextStyle(
                                        color: Colors.white
                                    ),)
                                  ],
                                ),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(_Images[index],),

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
    else if(_currentIndex==1){
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 21,),
            Align(
              alignment:Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text("Categaries",style: TextStyle(
                  fontWeight: FontWeight.w400,
                   color: Colors.black,
                  fontSize: 15,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 700,
               child: GridView.builder(

                 scrollDirection: Axis.vertical,

                   itemCount: _title.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                   ), itemBuilder: (context,index){
                 return Container(
                   margin: EdgeInsets.all(4),
                   height: 222,
                   width: 160,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(18),

                     gradient: LinearGradient(
                       begin: Alignment.topLeft,
                       end: Alignment.bottomLeft,
                       colors: [
                         Color(0xff4776E6),
                         Color(0xff8E54E9),
                       ]
                     ),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Column(
                       children: [

                         Container(
                           height: 120,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: AssetImage(_images[index]),

                             ),
                           ),
                         ),

                         Text(_title[index],style: GoogleFonts.russoOne(
                           fontSize: 15,
                           fontWeight: FontWeight.w400,
                           color: Colors.white,
                           letterSpacing: 5
                         ),)
                       ],
                     ),
                   ),
                 );

               }
               ),
              ),
            )

          ],
        ),
      );
    }else if(_currentIndex==2){
      return Column(
        children: [
          SizedBox(height: 28,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 222,
              width: 368,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff4776E6),
                    Color(0xff8E54E9),
                  ]
                ),

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("SONY 200mm Zomm\nMRP : 16000",style: GoogleFonts.fugazOne(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 11,),
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Text("In Stock",style: GoogleFonts.italiana(
                            fontWeight: FontWeight.w800,
                            color: Colors.white.withOpacity(0.2),
                          ),),
                        ),
                        SizedBox(height: 11,),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text("This Is a Gift",style: GoogleFonts.gabriela(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.white,
                            letterSpacing: 2,
                          ),),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              height: 19,
                              width: 102,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.heart_broken,size: 10,),
                                  Text("Add To WishList",style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black
                                  ),)
                                ],
                              ),

                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 19,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.delete_forever_outlined,size: 15,),
                                  Text("Delete",style: TextStyle(
                                      fontSize: 10,
                                    color: Colors.black
                                  ),)
                                ],
                              ),

                            ),

                          ],
                        )


                      ],
                    ),
                    SizedBox(width: 50,),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Container(
                            height: 60,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/1.png"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(height: 61,),
                          Container(
                            height: 25,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(color: Colors.black)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("-"),
                                Container(height: 25,width: 2,color: Colors.black,),
                                Text("1"),
                                Container(height: 25,width: 2,color: Colors.black,),
                                Text("+"),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      );
    }else if(_currentIndex==3){
      return Align(
        alignment: Alignment.center,
          child:
      Text("No New Notification For you",style: GoogleFonts.italiana(),));
    }else{
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 34,),
            Align(
              alignment: Alignment.topLeft,
              child: Text("Account Settings",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),),
            ),
            SizedBox(height: 5,),
            Container(
              height: 250,
              width: 368,
              decoration: BoxDecoration(
                color: Color(0xffDEDEDE),
                borderRadius: BorderRadius.circular(12),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Security"),
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Change Address"),
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Devices"),
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Alerts"),
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Recents Purchases"),
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Cancellation"),
                      )),
                ],
              ),

            ),
          ],
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading:false,
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: TextField(
            decoration: InputDecoration(
                fillColor: Color(0xffDEDEDE),
                filled: true,
                hintText: "Search for products...",
                prefixIcon: Icon(Icons.search,size: 30,color: Color(0xff6369E8),),
                suffixIcon: Icon(Icons.adf_scanner_outlined,size: 30,color: Color(0xff6369E8),),
                border: InputBorder.none
            ),
          ),
        ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0,4),
              blurRadius:20,
              spreadRadius: 0,
              color: Color(0xff000000).withOpacity(0.6),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(22),bottomLeft: Radius.circular(22)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           InkWell(
            onTap: (){
              setState(() {
                _currentIndex=0;
              });
            },
               child:Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   _currentIndex==0?Icon(Icons.home,size: 24,color: Color(0xff4776E6),):Icon(Icons.home,size: 24,)
                 ],
               ),
           // IconButton(onPressed: (){
           //   setState(() {
           //     _currentIndex=1;
           //   });
           // }, icon: Icon(Icons.category_outlined,size: 24,)),
           //  IconButton(onPressed: (){
           //    setState(() {
           //      _currentIndex=2;
           //    });
           //  }, icon: Icon(Icons.shopping_cart_outlined,size: 24,),),
           //  IconButton(onPressed: (){
           //    setState(() {
           //      _currentIndex=3;
           //    });
           //  }, icon: Icon(Icons.notifications_none, size: 24,),),
           //  IconButton(onPressed: (){
           //    setState(() {
           //      _currentIndex=4;
           //    });
           //  }, icon: Icon(Icons.person_outline,size:24,),),
           ),
            InkWell(
              onTap: (){
                setState(() {
                  _currentIndex=1;
                });
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _currentIndex==1?Icon(Icons.category_outlined,size: 24,color: Color(0xff4776E6),):Icon(Icons.category_outlined,size: 24,)
                ],
              ),
              // IconButton(onPressed: (){
              //   setState(() {
              //     _currentIndex=1;
              //   });
              // }, icon: Icon(Icons.category_outlined,size: 24,)),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=2;
              //    });
              //  }, icon: Icon(Icons.shopping_cart_outlined,size: 24,),),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=3;
              //    });
              //  }, icon: Icon(Icons.notifications_none, size: 24,),),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=4;
              //    });
              //  }, icon: Icon(Icons.person_outline,size:24,),),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  _currentIndex=2;
                });
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _currentIndex==2?Icon(Icons.shopping_cart_outlined,size: 24,color: Color(0xff4776E6),):Icon(Icons.shopping_cart_outlined,size: 24,)
                ],
              ),
              // IconButton(onPressed: (){
              //   setState(() {
              //     _currentIndex=1;
              //   });
              // }, icon: Icon(Icons.category_outlined,size: 24,)),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=2;
              //    });
              //  }, icon: Icon(Icons.shopping_cart_outlined,size: 24,),),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=3;
              //    });
              //  }, icon: Icon(Icons.notifications_none, size: 24,),),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=4;
              //    });
              //  }, icon: Icon(Icons.person_outline,size:24,),),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  _currentIndex=3;
                });
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _currentIndex==3?Icon(Icons.notifications_none,size: 24,color: Color(0xff4776E6),):Icon(Icons.notifications_none,size: 24,)
                ],
              ),
              // IconButton(onPressed: (){
              //   setState(() {
              //     _currentIndex=1;
              //   });
              // }, icon: Icon(Icons.category_outlined,size: 24,)),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=2;
              //    });
              //  }, icon: Icon(Icons.shopping_cart_outlined,size: 24,),),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=3;
              //    });
              //  }, icon: Icon(Icons.notifications_none, size: 24,),),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=4;
              //    });
              //  }, icon: Icon(Icons.person_outline,size:24,),),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  _currentIndex=4;
                });
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _currentIndex==4?Icon(Icons.person_outline,size: 24,color: Color(0xff4776E6),):Icon(Icons.person_outline,size: 24,)
                ],
              ),
              // IconButton(onPressed: (){
              //   setState(() {
              //     _currentIndex=1;
              //   });
              // }, icon: Icon(Icons.category_outlined,size: 24,)),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=2;
              //    });
              //  }, icon: Icon(Icons.shopping_cart_outlined,size: 24,),),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=3;
              //    });
              //  }, icon: Icon(Icons.notifications_none, size: 24,),),
              //  IconButton(onPressed: (){
              //    setState(() {
              //      _currentIndex=4;
              //    });
              //  }, icon: Icon(Icons.person_outline,size:24,),),
            ),
          ]
        ),

      ),
        body: Column(
          children: [
            condition(),



          ],
        )
    );
  }
}




















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
            enableInfiniteScroll: true,
            initialPage: 2,
            autoPlay: true,

          ),

          items: imageSliders,
        ));
  }
}
