import 'package:e_commerce_app/bottom_navigation_bar_screen.dart';
import 'package:flutter/material.dart';
class otp_screen extends StatelessWidget {
  const otp_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            colors: [
              Color(0xff4776E6),
              Color(0xff8E54E9),
            ]
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(
              child: Container(
                height: 44,
                width: 309,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/logo.png"),
                    )
                ),
              ),
            ),
            SizedBox(height: 121,),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("OTP",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Color(0xffD9D9D9),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter OTP sent in email",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.output,color:Color(0xff6369E8) ,size: 35,)
                ),
              ),
            ),
            SizedBox(height: 8,),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Resent OTP",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),),
              ),
            ),
            Divider(
              thickness: 1.1,
              color: Colors.white,
              endIndent: 650,
              indent: 20,
            ),
            SizedBox(height: 38,),
            Container(
              height: 42,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>bottom_navigation_bar_screen()));
                  },
                    child: Text("verify",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
