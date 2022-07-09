import 'package:flutter/material.dart';

class ShopView extends StatefulWidget {
  const ShopView({ Key? key }) : super(key: key);

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title:const Text("Shop",
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),),
         actions: [
          IconButton(onPressed: () {}, 
          icon:const Icon(Icons.shopping_cart, 
          size: 35,),
          ),
          IconButton(onPressed: () {}, 
          icon:const Icon(Icons.menu, 
          size: 35,),
          )
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 35, right: 35),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon:const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(50),
                  borderSide:const BorderSide(color: Colors.black),),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.green.shade600),),
                    focusColor: Colors.redAccent.shade400
              ),
            ),
          )
        ],
      ),
      
    );
  }
}