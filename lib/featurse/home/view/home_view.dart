import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title:const Text("Home",
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),),
         actions: [
          IconButton(onPressed: () {}, 
          icon:const Icon(Icons.favorite_border_outlined, 
          size: 35,),
          ),
          IconButton(onPressed: () {}, 
          icon:const Icon(Icons.messenger_outline_outlined, 
          size: 35,),
          )
        ],
      ),
      
    );
  }
}