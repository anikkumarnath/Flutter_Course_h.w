import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_day/profilepage.dart';
import 'package:second_day/models/model.dart';

List <postmodel> post = [
  postmodel(username: 'Anik',profileImageURL: 'images/cover.png',caption: 'Khulna Government Mahila College',address: ' Jalil - Sarani, Khulna,Khulna,Bangaldesh',postImageURL: '',likes: 2345),
  postmodel(username: 'anik',profileImageURL: 'images/cover.png',caption: 'Khulna College',address: 'Seikh Para Main Rd, Khulna,Khulna,Bangladesh',postImageURL: '',likes: 345),
  postmodel(username: 'anik',profileImageURL: 'images/cover.png',caption: 'Ahsanullah College',address: 'KDA Ave, Khulna,Khulna,Bangladesh',postImageURL: '',likes: 545),
  postmodel(username: 'anik',profileImageURL: 'images/cover.png',caption: 'Azam Khan Government Commerce College',address: 'Babu Khan Rd, Khulna,Khulna,Bangladesh',postImageURL: '',likes: 45),
  postmodel(username: 'anik',profileImageURL: 'images/cover.png',caption: 'Govt. Brajalal (BL) College',address: 'Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh',postImageURL: '',likes: 35),
  postmodel(username: 'anik',profileImageURL: 'images/cover.png',caption: 'Govt. M. M. City College',address: '300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh',postImageURL: '',likes: 23),
  postmodel(username: 'anik',profileImageURL: 'images/cover.png',caption: 'Khulna Public College',address: 'public college, road, Khulna-9000,Khulna,Bangaldesh',postImageURL: '',likes: 845),
];

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
        body: Container(
          child: ListView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15
              ),
              itemCount: 5,
              itemBuilder: (BuildContext context,int index){
                return Container(
                  height: MediaQuery.of(context).size.height/3.5,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(220, 18, 18, 1.0),
                  ),
                  child: Column(
                    children: [

                    ],
                  ),
                );
              }
          ),
        )
    );
  }
}