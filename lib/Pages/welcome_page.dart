import 'package:flutter/material.dart';
import 'package:rohan/Pages/create_account_page.dart';
import 'package:rohan/Pages/login_page.dart';
import 'package:rohan/constants/image_constant.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool isPressed =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade500,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstants.logo2, height: 200,),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                if (isPressed == false) {
                  isPressed = true;
                } else if(isPressed == true) {
                  isPressed = false;
                }
                setState(() {});
              },
              child: AnimatedContainer(
                duration:const Duration( seconds: 1),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color:isPressed? Colors.green.shade500 : Colors.green.shade400,
                  border: Border.all(color:isPressed? Colors.green .shade200: Colors.green.shade400),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: isPressed? [] : [
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-8, -8),
                      blurRadius: 15,
                      spreadRadius: 1
                    ),
            
                    BoxShadow(
                      color: Colors.grey.shade900,
                      offset:const Offset(8, 8),
                      blurRadius: 15,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30),
                  child: Text("WelCome\nTo\nMy World",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color:isPressed? Colors.white : Colors.black,
                  ),
                  ),
                ),
                
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const CreateAccount() ));
                });
              },
              child: Container(
                      padding:const EdgeInsets.only( top: 8, left: 30),
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow:const [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(4, 4),
                            blurRadius: 10,
                            spreadRadius: 1,
                          )
                        ]
                      ),
                      child:const Text("Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
            ),
                  const SizedBox(height: 20,),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const LoginPage() ));
                });
                    },
                    child: Container(
                      padding:const EdgeInsets.only( top: 8, left: 80),
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow:const [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(4, 4),
                            blurRadius: 10,
                            spreadRadius: 1,
                          )
                        ]
                      ),
                      child:const Text("LOGIN",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
          ],
        ),
      ),
      
      
    );
  }
}