import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title:const Text("Profile",
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          IconButton(onPressed: () {}, 
          icon:const Icon(Icons.add_a_photo, 
          size: 35,),
          ),
          IconButton(onPressed: () {}, 
          icon:const Icon(Icons.menu, 
          size: 35,),
          )
        ],
      ),
      
    );
  }
}