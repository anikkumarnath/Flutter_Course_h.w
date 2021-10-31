import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_day/profilepage.dart';
import 'package:second_day/models/model.dart';

List <postmodel> post = [
  postmodel(username: 'Anik',profileImageURL: 'images/Cover.png',caption: 'Khulna Government Mahila College',address: ' Jalil - Sarani, Khulna,Khulna,Bangaldesh',postImageURL: 'images/Posts/post_1.jpg',likes: 2345),
  postmodel(username: 'Anik',profileImageURL: 'images/Cover.png',caption: 'Khulna College',address: 'Seikh Para Main Rd, Khulna,Khulna,Bangladesh',postImageURL: 'images/Posts/post_2.jpg',likes: 345),
  postmodel(username: 'Anik',profileImageURL: 'images/Cover.png',caption: 'Ahsanullah College',address: 'KDA Ave, Khulna,Khulna,Bangladesh',postImageURL: 'images/Posts/post_3.jpg',likes: 545),
  postmodel(username: 'Anik',profileImageURL: 'images/Cover.png',caption: 'Azam Khan Government Commerce College',address: 'Babu Khan Rd, Khulna,Khulna,Bangladesh',postImageURL: 'images/Posts/post_4.jpg',likes: 45),
  postmodel(username: 'Anik',profileImageURL: 'images/Cover.png',caption: 'Govt. Brajalal (BL) College',address: 'Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh',postImageURL: 'images/Posts/post_5.jpg',likes: 35),
  postmodel(username: 'Anik',profileImageURL: 'images/Cover.png',caption: 'Govt. M. M. City College',address: '300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh',postImageURL: 'images/Posts/post_6.jpg',likes: 23),
  postmodel(username: 'Anik',profileImageURL: 'images/Cover.png',caption: 'Khulna Public College',address: 'public college, road, Khulna-9000,Khulna,Bangladesh',postImageURL: 'images/Posts/post_7.jpg',likes: 845),
  postmodel(username: 'Anik',profileImageURL: 'images/Cover.png',caption: 'Khulna Government College',address: 'Hasanbag Road, Khulna,Khulna,Bangladesh',postImageURL: 'images/Posts/post_8.jpg',likes: 5355),
  postmodel(username: 'Anik',profileImageURL: 'images/Cover.png',caption: 'Government Sundarban Adarsha College',address: '91 Khanjhan Ali road, Jessore-Dhaka Highway, Khulna,Bangladesh',postImageURL: 'images/Posts/post_9.jpg',likes: 4845),
  postmodel(username: 'Anik',profileImageURL: 'images/Cover.png',caption: 'Khulna Islamia Degree College',address: ' M A Bari St, Khulna,Khulna,Bangladesh',postImageURL: 'images/Posts/post_10.jpg',likes: 245),
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
         // centerTitle: true,
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
              itemCount: post.length,
              itemBuilder: (BuildContext context,int index){
                return Container(
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(248, 190, 233, 0.1),
                          Color.fromRGBO(248, 190, 233, 0.2),
                          Color.fromRGBO(248, 190, 233, 0.3),
                          Color.fromRGBO(248, 190, 233, 0.4),
                          Color.fromRGBO(248, 190, 233, 0.5),
                          Color.fromRGBO(248, 190, 233, 0.6),
                          Color.fromRGBO(248, 190, 233, 0.7),
                          Color.fromRGBO(248, 190, 233, 0.8),
                          Color.fromRGBO(248, 190, 233, 0.9),
                          Color.fromRGBO(248, 190, 233, 1.0),
                        ]

                    ),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color.fromRGBO(245, 8, 8, 1.0), width: 5,),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 20,),
                    child: Column(
                      children: [
                        // Header Row

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("${post[index].profileImageURL}"),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 13),
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    text: "${post[index].username}\n",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(21, 21, 21, 1),
                                      height: 1.2,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "${DateTime.now()}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            color: Color.fromRGBO(21, 21, 21, 1)
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Address Row
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 7),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 15,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "${post[index].address}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(21, 21, 21, 1),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Caption Text Container
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          child: Container(
                            height: MediaQuery.of(context).size.height/15,
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "${post[index].caption}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, .6),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),

                        //Image container

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Container(
                            height: MediaQuery.of(context).size.height/4,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("${post[index].postImageURL}"),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),

                        //Buttons Container
                        Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                //Likes Button Container

                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width/3.9,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(0,0,0,.6),
                                      width: 3,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: FlatButton.icon(
                                    onPressed: (){},
                                    icon: Icon(
                                      CupertinoIcons.heart,
                                      color: Color.fromRGBO(0,0,0,.6),
                                      size: 13,
                                    ),
                                    label: Text(
                                      "${post[index].likes} likes",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8,
                                        color: Color.fromRGBO(0, 0, 0, .6),
                                      ),
                                    ),
                                  ),
                                ),

                                // Comments button container
                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width/3.7,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(0, 0, 0, .6),
                                        style: BorderStyle.solid,
                                        width: 3,
                                      )
                                  ),
                                  child: FlatButton.icon(
                                    onPressed: (){},
                                    icon: Icon(Icons.message_outlined,
                                      size: 13,
                                      color: Color.fromRGBO(0, 0, 0, .6),
                                    ),
                                    label: Text(
                                      "Comments",
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, .6),
                                        fontSize: 8,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),

                                // Share Button Container

                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width/4,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(0, 0, 0, .6),
                                        style: BorderStyle.solid,
                                        width: 3,
                                      )
                                  ),
                                  child: FlatButton.icon(
                                    onPressed: (){},
                                    icon: Icon(Icons.share_outlined,
                                      size: 13,
                                      color: Color.fromRGBO(0, 0, 0, .6),
                                    ),
                                    label: Text(
                                      "Share",
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, .6),
                                        fontSize: 8,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
          ),
        )
    );
  }
}