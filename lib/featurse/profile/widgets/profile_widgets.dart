import 'package:flutter/material.dart';
import 'package:rohan/constants/image_constant.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({ Key? key }) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
       children: [
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(ImageConstants.user2, height: 100,),
            Column(
              children:const [
                Text("37",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                ),),
                Text("Posts",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                ),),
              ],
            ),
            Column(
              children:const [
                Text("108",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                ),),
                Text("Followers",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                ),),
              ],
            ),
            Column(
              children:const [
                Text("100",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                ),),
                Text("Following",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                ),),
              ],
            ),
          ],
        ),
        const SizedBox(height: 5,),
        ListTile(
          title: Text("Roh AN",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.green.shade400
        ),),
        subtitle: Text("Living life on My Own terms",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.green.shade400
        ),),
        ),
        
        const SizedBox(height: 5,),

        Row(
          children: [
            const SizedBox(width: 15,),
            Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade400,
              ),
              child:const Padding(padding: EdgeInsets.only(left: 110, top: 5),
              child: Text("Edit profile",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),),),
            ),
            const SizedBox(width: 10,),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade400
              ),
              child:const Icon(Icons.person_add, color: Colors.white,),
            )
          ],
        ),
        const SizedBox(height: 10,),
        
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade300
          ),
          child: Column(
            children: [
              ListTile(
                title: Text("Discover People",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.green.shade400
        ),),
        trailing:  Text("SEE ALL",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.green.shade400
        ),),
              )
            ],
          ),
        )
        
       ],
        
      ),
    );
  }
}