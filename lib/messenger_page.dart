import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_day/profilepage.dart';

class Messenger_Page extends StatefulWidget {
  const Messenger_Page({Key? key}) : super(key: key);

  @override
  _Messenger_PageState createState() => _Messenger_PageState();
}

class _Messenger_PageState extends State<Messenger_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>ProfilePage(),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          iconSize: 20,
        ),
        title: Text(
          "Messenger",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>Messenger_Page(),
                ),
              );
            },
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            iconSize: 20,
          ),
        ],
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
