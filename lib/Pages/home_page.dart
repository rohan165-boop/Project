import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../featurse/home/view/home_view.dart';
import '../featurse/post/view/post_view.dart';
import '../featurse/profile/view/profile_view.dart';
import '../featurse/search/view/search_view.dart';
import '../featurse/shop/view/shop_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> page = [
    HomeView(),
    SearchView(),
    PostView(),
    ShopView(),
    Profile(),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        if(_currentIndex == 0) {
          SystemNavigator.pop();
        } else {
          _currentIndex = 0;
          setState(() {});
        }
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: page[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.lightGreenAccent,
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),
            label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add),
            label: "Add Post"),
            BottomNavigationBarItem(icon: Icon(Icons.shop),
            label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person),
            label: "Profile"),
          ],
        ),
      ),
      
    );
  }
}