import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_day/profilepage.dart';
import 'package:second_day/models/model.dart';

List<String> imageAvatar=[
  'images/Profile_Images/user_1.jpg',
  'images/Profile_Images/user_2.jpg',
  'images/Profile_Images/user_3.jpg',
  'images/Profile_Images/user_4.jpg',
  'images/Profile_Images/user_5.jpg',
  'images/Profile_Images/user_6.jpg',
  'images/Profile_Images/user_7.jpg',
  'images/Profile_Images/user_8.jpg',
  'images/Profile_Images/user_9.jpg',
  'images/Profile_Images/user_10.jpg',
];
List<messengermodel> messengerModel = [
  messengermodel(
    username: "Abdur Rajjak",
    lastmessage: "How are you doing?",
    userProfilePicture: "images/Profile_Images/user_1.jpg",
  ),
  messengermodel(
    username: "Shakib Al Hasan",
    lastmessage: "How have you been?",
    userProfilePicture: "images/Profile_Images/user_2.jpg",
  ),
  messengermodel(
    username: "Tawsif Mahbub",
    lastmessage: "How's everything?",
    userProfilePicture: "images/Profile_Images/user_3.jpg",
  ),
  messengermodel(
    username: "Mosharraf Karim",
    lastmessage: "How's it going?",
    userProfilePicture: "images/Profile_Images/user_4.jpg",
  ),
  messengermodel(
    username: "Chanchal Chowdhury",
    lastmessage: "How are things going?",
    userProfilePicture: "images/Profile_Images/user_5.jpg",
  ),
  messengermodel(
    username: "Afran Nisho",
    lastmessage: "What's going on?",
    userProfilePicture: "images/Profile_Images/user_6.jpg",
  ),
  messengermodel(
    username: "Ziaul Faruq Apurba",
    lastmessage: "What's new?",
    userProfilePicture: "images/Profile_Images/user_7.jpg",
  ),
  messengermodel(
    username: "Siam Ahmed",
    lastmessage: "What's up?",
    userProfilePicture: "images/Profile_Images/user_8.jpg",
  ),
  messengermodel(
    username: "Zakia Bari Mamo",
    lastmessage: "Whatssup?",
    userProfilePicture: "images/Profile_Images/user_9.jpg",
  ),
  messengermodel(
    username: "Mashrafe Mortaza",
    lastmessage: "what are you up to? আমি ভালা আছি😂😂😂",
    userProfilePicture: "images/Profile_Images/user_10.jpg",
  ),
];

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
          Padding(
            padding:
            const EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
            child: Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  width: 3,
                  style: BorderStyle.solid,
                ),
              ),
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Messenger_Page(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.message,
                  size: 15,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                label: Text(
                  "Messages",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Text(
                "Friends",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, 1),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageAvatar.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 7),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("${imageAvatar[index]}"),
                        fit: BoxFit.fitWidth,
                      ),
                      border: Border.all(
                          color: Color.fromRGBO(100, 100, 255, 1),
                          style: BorderStyle.solid,
                          width: 3),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
              child: Text(
                "Messages",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, 1),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(
                                  "${messengerModel[index].userProfilePicture}"),
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.height / 15,
                              left: MediaQuery.of(context).size.width / 6.2,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Color.fromRGBO(20, 255, 10, 1),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              text: "${messengerModel[index].username}\n",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0, 0, 0, 0.9),
                                  height: 1.3),
                              children: [
                                TextSpan(
                                  text:
                                  "last Message : ${messengerModel[index].lastmessage}",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              childCount: messengerModel.length,
            ),
          ),
        ],
      ),
    );
  }
}