import 'package:flutter/material.dart';
import 'package:profile/muhome2.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      home: myhome2(),
    );
  }
}