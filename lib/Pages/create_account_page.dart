import 'package:flutter/material.dart';
import 'package:rohan/constants/image_constant.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({ Key? key }) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _isPressed = false;
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
                  child: Image.asset(ImageConstants.create),
                ),
              ), ),

              const Padding(
                padding: EdgeInsets.only(top: 370, left: 40),
                child: Text("CREATE ACCOUNT",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                ),
      
                 Padding(
                  padding:const EdgeInsets.only(top: 430, left: 35, right: 35 ),
                  child: TextFormField(
                  decoration:const InputDecoration(
                    hintText: "Phone Number",
                    labelText: "Phone ",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
                  padding:const EdgeInsets.only(top: 510, left: 35, right: 35 ),
                  child: TextFormField(
                  decoration:const InputDecoration(
                    hintText: "Password",
                    labelText: "Password ",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
                  padding:const EdgeInsets.only(top: 590, left: 35, right: 35 ),
                  child: TextFormField(
                  decoration:const InputDecoration(
                    hintText: "Re-enter Password",
                    labelText: "Re-enter Password ",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
                  padding:const EdgeInsets.only(top: 680, left: 130),
                  child: Container(
                    padding:const EdgeInsets.only(left: 20, top: 8),
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child:const Text("Sign In",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  )
          ],
        ),
      ),
      
    );
  }
}