import 'package:flutter/material.dart';
import 'package:rohan/Pages/home_page.dart';
import 'package:rohan/constants/image_constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPressed = false;
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade400,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60 , left: 20),
              child: IconButton(onPressed: () {
                Navigator.of(context).pop();
              }, 
              icon:const Icon(Icons.arrow_back_ios,
              size: 40,
              color: Colors.black,),),
            ),
      
            Padding(
              padding:const EdgeInsets.only(top: 100, left: 80),
              child: GestureDetector(
                onDoubleTap: () {
                 if(_isPressed == false) {
                  _isPressed = true;
                 } else if(_isPressed == true) {
                  _isPressed = false;
                 }
                 setState(() {});
                },
                child: AnimatedContainer(
                  duration:const Duration(seconds: 1),
                  padding:const EdgeInsets.all(8.0),
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent.shade400,
                    borderRadius: BorderRadius.circular(250),
                    border: Border.all(color: _isPressed? Colors.green.shade400 : Colors.greenAccent.shade400),
                    boxShadow:_isPressed? [] : const [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-6, -6),
                        blurRadius: 15,
                        spreadRadius: 1
                      ),
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(6, 6),
                        blurRadius: 15,
                        spreadRadius: 1
                      )
                    ]
                  ),
                  child: Image.asset(ImageConstants.login1),
                ),
              ), ),

              const Padding(
                padding: EdgeInsets.only(top: 380, left: 40),
                child: Text("LOGIN",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                ),
      
                 Padding(
                  padding:const EdgeInsets.only(top: 450, left: 35, right: 35 ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    validator: (String? value) {
                      if (value == null || value.length<10) {
                        return "Please enter a valid number.";
                      } else {
                        return null;
                      }
                    },
                  decoration:const InputDecoration(
                    hintText: "Phone Number",
                    labelText: "Phone ",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    prefix: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text("(+977)", style: TextStyle(fontSize: 20),),),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25),),
                      borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25),),
                    borderSide: BorderSide(color: Colors.black) 
                    )
                  ) ,
                  
              ),
                ),
      
                Padding(
                  padding:const EdgeInsets.only(top: 550, left: 35, right: 35 ),
                  child: TextFormField(
                    obscureText: isObscure,
                    validator: (String? value) {
                      if( value == null || value.length<8 ){
                        return "Please Enter your Password";
                      } else if (value.length<8) {
                        return "Password must be greter than 8 character.";
                      } else {
                        return null;
                      }
                    },
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password ",
                    prefixIcon:const Icon(Icons.fingerprint),
                    suffixIcon: GestureDetector(
                      child:const Icon(Icons.visibility_off),
                      onLongPressStart: (val) {
                        setState(() {
                          isObscure = false;
                        });
                      },
                      onLongPressEnd: (val) {
                        setState(() {
                          isObscure = true;
                        });
                      },
                       ),
                    labelStyle:const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder:const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25),),
                      borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder:const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25),),
                    borderSide: BorderSide(color: Colors.black) 
                    )
                  ) ,
                  
              ),
                ),

                Padding(
                  padding:const EdgeInsets.only(top: 650, left: 130),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) =>const HomePage() ));
                      });
                    },
                    child: Container(
                      padding:const EdgeInsets.only(left: 30, top: 8),
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-6, -6),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.grey.shade700,
                            offset:const Offset(6, 6),
                            blurRadius: 15,
                            spreadRadius: 1,
                          )
                        ]
                      ),
                      child:const Text("Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                  )
          ],
        ),
      ),
      
    );
  }
}