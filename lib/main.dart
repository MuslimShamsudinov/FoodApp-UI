import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_am_rich_ui/pages/home_page.dart';
import 'package:i_am_rich_ui/pages/single_item_page.dart';

void main (){
  runApp(foodApp());
}
class foodApp extends StatefulWidget {
  const foodApp({super.key});

  @override
  State<foodApp> createState() => _foodAppState();
}

class _foodAppState extends State<foodApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomePage(),
        'singleItemPage':(context) =>SingleItemPage (),
      },
    );
  }
}