import 'package:e_commerce_app/login_screen.dart';
import 'package:flutter/material.dart';
class register_screen extends StatelessWidget {
  const register_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          height: 900,
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
                  child: Text("Register",style: TextStyle(
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
                    hintText: "Name",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.person,color:Color(0xff6369E8) ,size: 35,)
                  ),
                ),
              ),
              SizedBox(height: 9,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Color(0xffD9D9D9),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(Icons.email,color:Color(0xff6369E8) ,size: 35,)
                  ),
                ),
              ),
              SizedBox(height: 9,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Color(0xffD9D9D9),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "phone",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(Icons.phone,color:Color(0xff6369E8) ,size: 35,)
                  ),
                ),
              ),
              SizedBox(height: 9,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Color(0xffD9D9D9),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Password",

                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(Icons.password,color:Color(0xff6369E8) ,size: 35,)
                  ),
                ),
              ),
              SizedBox(height: 9,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Color(0xffD9D9D9),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Re-Enter Password",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(Icons.password,color:Color(0xff6369E8) ,size: 35,)
                  ),
                ),
              ),
              SizedBox(height: 13,),
              Container(
                height: 42,
                width: 177,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text("Create Account",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                    color: Color(0xff785FE9),
                  ),),
                ),
              ),
              SizedBox(height: 18,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                   Container(
                     height: 2,
                     width: 140,
                     color: Colors.white,
                   ),
                    SizedBox(width: 8,),
                    Text("OR",style: TextStyle(color: Colors.white),),
                    SizedBox(width: 8,),
                    Container(
                      height: 2,
                      width: 140,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28,),
              Container(
                height: 47,
                width: 321,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xffE5E5E5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Container(
                        height: 47,
                        width: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/google logo.png"),
                          )
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text("Continue With Google",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Existing User ?",style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color:Colors.white,
              ),),
              Divider(
                thickness: 1.5,
                color: Colors.white,
                endIndent: 320,
                indent: 320,
              ),
              SizedBox(height: 7,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>login_screen()));
                },
                child: Container(
                  height: 42,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Text("Login",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400),),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
