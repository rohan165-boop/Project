import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rohan/app/dark_theme.dart';
import 'package:rohan/provider/theme_provider.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final themepro = Provider.of<ThemeProvider>(context);
    return Scaffold(
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
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(context: context,
              backgroundColor: Colors.grey.shade600,
              shape:const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)
                )
              ),
               builder: (context) {
                return SizedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title:const Text("Theme",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                        trailing: Switch(value: themepro.currentTheme == darkTheme , 
                        onChanged: (val) {
                          themepro.changeTheme();
                        }),
                      )
                    ],
                  ),
                );
               },
               );
            },
            child:const Icon(Icons.more_vert, 
            size: 30,
            color: Colors.redAccent,),
          )
        ],
      ),
      
    );
  }
}