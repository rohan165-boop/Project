import 'package:flutter/material.dart';

class PostView extends StatefulWidget {
  const PostView({ Key? key }) : super(key: key);

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title:const Text("Add Post",
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