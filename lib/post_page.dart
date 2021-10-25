import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_day/profilepage.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
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
          "Posts Page",
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
                  builder: (context)=>PostPage(),
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