import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rohan/Pages/welcome_page.dart';
import 'package:rohan/provider/theme_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
     ChangeNotifierProvider(create: (context) => ThemeProvider(),)
    ],
    child:const MyApp(),));
  
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeProvider>(context);
    return  MaterialApp(
      theme: appTheme.currentTheme,
      title: "Practice",
      home:const WelcomePage(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}