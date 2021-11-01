import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_day/profilepage.dart';
import 'package:second_day/models/followermodel.dart';

List<FollowerModel> followermodel = [
  FollowerModel(
    username: "Afran Nisho",
    imageURL:
    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Afran_Nisho.jpg/220px-Afran_Nisho.jpg",
    friends: 252653,
  ),
  FollowerModel(
    username: "Mashrafe Mortaza",
    imageURL:
    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Mashrafe_conference_1.jpg/260px-Mashrafe_conference_1.jpg",
    friends: 7483783,
  ),
  FollowerModel(
    username: "Liton Dus",
    imageURL:
    "https://upload.wikimedia.org/wikipedia/commons/6/69/Liton_Das_%283%29_%28cropped%29.jpg",
    friends: 87384738,
  ),
  FollowerModel(
    username: "Shoaib Malik",
    imageURL:
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Shoaib_Malik_answering_RAPID_FIRE_questions_%28PCB%29_01.jpg/260px-Shoaib_Malik_answering_RAPID_FIRE_questions_%28PCB%29_01.jpg",
    friends: 8278372,
  ),
  FollowerModel(
    username: "Zayn Malik",
    imageURL:
    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Zayn_Wiki_%28cropped%29.jpg/220px-Zayn_Wiki_%28cropped%29.jpg",
    friends: 8982827,
  ),
  FollowerModel(
    username: "Ed Sheeran",
    imageURL:
    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Ed_Sheeran-6886_%28cropped%29.jpg/220px-Ed_Sheeran-6886_%28cropped%29.jpg",
    friends: 7837237,
  ),
  FollowerModel(
    username: "Azam Khan Pop Singer",
    imageURL:
    "https://upload.wikimedia.org/wikipedia/en/1/18/Azam_Khan_%28singer%29.jpg",
    friends: 72837283,
  ),
  FollowerModel(
    username: "Nusrat Fateh Ali Khan",
    imageURL:
    "https://upload.wikimedia.org/wikipedia/en/thumb/5/59/Nusrat_Fateh_Ali_Khan_03_1987_Royal_Albert_Hall.jpg/220px-Nusrat_Fateh_Ali_Khan_03_1987_Royal_Albert_Hall.jpg",
    friends: 909777665,
  ),
  FollowerModel(
    username: "Cristiano Ronaldo",
    imageURL:
    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cristiano_Ronaldo_2018.jpg/220px-Cristiano_Ronaldo_2018.jpg",
    friends: 723722,
  ),
  FollowerModel(
    username: "Lionel Messi",
    imageURL:
    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Lionel_Messi_20180626.jpg/220px-Lionel_Messi_20180626.jpg",
    friends: 878766,
  ),
];


class Follower_Page extends StatefulWidget {
  const Follower_Page({Key? key}) : super(key: key);

  @override
  _Follower_PageState createState() => _Follower_PageState();
}

class _Follower_PageState extends State<Follower_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 240, 240, .6),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(21, 21, 21, .6),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
          iconSize: 20,
        ),
        title: Text(
          "Follower",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color.fromRGBO(21, 21, 45, .6),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(21, 21, 45, .6),
            ),
            iconSize: 20,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Follower_Page(),
                ),
              );
            },
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15),
          itemCount: followermodel.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage:
                    NetworkImage("${followermodel[index].imageURL}"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text: "${followermodel[index].username}\n",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(21, 21, 21, .6)),
                        children: [
                          TextSpan(
                            text: "Friends : ${followermodel[index].friends}",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(21, 21, 21, .6)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}