import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_day/editpage.dart';
import 'package:second_day/post_page.dart';
import 'package:second_day/follower_page.dart';
import 'package:second_day/following_page.dart';
import 'package:second_day/messenger_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            iconSize: 18,
          ),
          title: Text(
            "Profile Page",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.grey.shade200,
              fontStyle: FontStyle.italic,
            ),
          ),
          actions:[
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=>EditPage(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width:3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green.shade400,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Text("Edit"),
                      Icon(Icons.create_sharp,size: 12,),
                    ],
                  ),
                ),
              ),
            ),
          ]
      ),
      backgroundColor: Color.fromRGBO(246, 246, 246, .6),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  //Profile Image And Name Container

                  Container(
                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/6,
                          width: MediaQuery.of(context).size.width/3.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/cover.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromRGBO(34, 36, 45, 1),
                                width: 3,
                                style: BorderStyle.solid,
                              )
                          ),
                        ),

                        //profile name and address column
                        Container(
                          height: MediaQuery.of(context).size.height/6,
                          width: MediaQuery.of(context).size.width/1.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 77),
                                child: Text(
                                  'Anik Kumar Nath',
                                  style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(249, 248, 240, 1),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Text(
                                'Trainee of Android Game development project',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(249, 248, 240, 1),
                                ),
                                textAlign: TextAlign.start,
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Bio Container

                  Container(
                    height: MediaQuery.of(context).size.height/2.5,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height/5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Text and icon container
                        Container(
                          height: MediaQuery.of(context).size.height/8,
                          width: MediaQuery.of(context).size.width/7,
                          margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width/1.3,
                            top: MediaQuery.of(context).size.height/20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bio",
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color.fromRGBO(248,249,250,.5),
                                ),
                              ),
                              Icon(
                                Icons.create_rounded,
                                color: Color.fromRGBO(248,249,250,.5),
                                size: 18,
                              ),
                            ],
                          ),
                        ),

                        //Text Container

                        Container(
                          height: MediaQuery.of(context).size.height/4.6,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 15,),
                          child: Text(
                            "Anik Kumar Nath, "
                                "one of the trainees of Android Game development Training. "
                                "This training center locates at Sat raster more, Khulna."
                                "He lives in Boikali, Khalishpur, Khulna.",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(249, 247, 245, .5),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Wrap widget container

                  Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width,
                      child: Wrap(
                        spacing: 5,
                        runSpacing: 10,
                        alignment: WrapAlignment.spaceEvenly,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                      Container(
                      height: MediaQuery.of(context).size.height/15,
                    width: MediaQuery.of(context).size.width/4.2,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(31, 31, 31, 1),
                          width: 3,
                          style: BorderStyle.solid
                      ),
                      color: Color.fromRGBO(245, 245, 245, 0.5),
                    ),
                    child: FlatButton.icon(
                      onPressed: (){  //onPressed work start
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>PostPage(),
                          ),
                        );
                      },// onPressed work end
                      icon: Icon(
                        CupertinoIcons.plus_square_on_square,
                        size: 12,
                        color: Color.fromRGBO(21, 21, 21, 1),
                      ),
                      label: Text(
                        "Posts",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(21, 21, 21, 1),
                        ),
                      ),
                    ),
                  ),

                          //Messanger container button
                          Container(
                            height: MediaQuery.of(context).size.height/15,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(21, 21,21, 1),
                                  width: 3,
                                  style: BorderStyle.solid
                              ),
                              color: Color.fromRGBO(245, 245, 245, .5),
                            ),
                            child: FlatButton.icon(
                              onPressed: (){Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context)=>Messenger_Page(),
                                ),
                              );
                              },
                              icon: Icon(
                                Icons.message_outlined,
                                size: 12,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                              label: Text(
                                "Messenger",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color.fromRGBO(21, 21, 21, 1),
                                ),
                              ),
                            ),
                          ),

                          //Following button container
                          Container(
                            height: MediaQuery.of(context).size.height/15,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(21, 21, 21, 1),
                                  width: 3,
                                  style: BorderStyle.solid
                              ),
                              color: Color.fromRGBO(245, 245, 245, .5),
                            ),
                            child: FlatButton.icon(
                              onPressed: (){Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context)=>Following_Page(),
                                ),
                              );
                              },
                              icon: Icon(
                                Icons.follow_the_signs_rounded,
                                size: 12,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                              label: Text(
                                "Following",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(21, 21, 21, 1),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),

                          //Follower Button

                          Container(
                            height: MediaQuery.of(context).size.height/15,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(21, 21, 21, 1),
                                  width: 3,
                                  style: BorderStyle.solid
                              ),
                              color: Color.fromRGBO(245, 245, 245, .5),
                            ),
                            child: FlatButton.icon(
                              onPressed: (){Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context)=>Follower_Page(),
                                ),
                              );
                              },
                              icon: Icon(
                                Icons.add_circle_outline,
                                size: 12,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                              label: Text(
                                "Follower",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color.fromRGBO(21, 21, 21, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
