import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../services/auth.dart';
import '../Main/Main.dart';
import '../Main/home.dart';
import '../Main/predict.dart';
import '../Main/trivia.dart';
import '../Main/vote.dart';

class PlayerVote extends StatefulWidget {
  const PlayerVote({super.key});

  @override
  State<PlayerVote> createState() => _PlayerVoteState();
}

class _PlayerVoteState extends State<PlayerVote> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  int CurrentIndex=0;
  bool isVoted=true;
  final Screens=[
    Home(),
    Vote(),
    Predict(),
    Trivia(),
  ];
  AuthService _user=AuthService();
  final Playerlist=[
    'assets/images/Player1.png',
    'assets/images/Player1.png',
    'assets/images/Player1.png',
    'assets/images/Player1.png',
    'assets/images/Player1.png',
  ];
  final Sponserslist=[
    'assets/images/Uber.png',
    'assets/images/Spotify.png',
    'assets/images/Coca-Cola.png',
    'assets/images/Caltex.png',
  ];
  final Titles=[
    'Player Of The Month',
    'Coach Of The Month',
    'Goal Of The Month',
    'Save Of the Month',
  ];
  int ActiveIndex=0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      bottomNavigationBar:SizedBox(
        height: 100,
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.cyan,

          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.how_to_vote_outlined),
              label: 'Vote',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.batch_prediction,),
              label: 'Predict',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_mark,),
              label: 'Trivia',
            ),
          ],
          currentIndex: CurrentIndex,
          //selectedItemColor: Colors.cyan,
          onTap:(index)=>Main(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height:30,
              child: Container(
                color: Colors.black,
              ),
            ),
            Container(
              height: 50,
              width: width,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/9tplusVote.png',width: 70,),
                  const SizedBox(width: 20),

                  Image.asset('assets/images/9tpluspredict.png',width: 70,),
                  const SizedBox(width: 20),

                  Image.asset('assets/images/9tplusTrivai.png',width: 70,),
                ],
              ),
            ),
            Container(
              height: 50,
              width: width,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Image.asset('assets/images/9tpluslogoDark.png',width: 100,),
                    ),
                    Icon(
                      Icons.logout,
                      size: 40,
                      weight: 100,
                      grade: -25,
                      opticalSize: 20,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height:30),
            Text('Player Of The Month',style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),),
            SizedBox(height:10),
            Text('Brought to you by :'),
            Image.asset(Sponserslist[3],height: 80,width: 120,),
            Center(
              child:
              GestureDetector(
              //  onTap: openScreen,
                child: Stack(
                    alignment: Alignment.bottomCenter,

                    children:[

                      CarouselSlider.builder(
                        options: CarouselOptions(
                          onPageChanged: (index,reason){
                            setState(() {
                              ActiveIndex=index;
                            });
                          },

                          height: 350,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                          enlargeFactor: 0.5,
                          autoPlayCurve: Curves.decelerate,
                          aspectRatio: 0.1,
                          viewportFraction: 0.3,
                          autoPlay: true,
                        ),
                        itemCount: Playerlist.length,
                        itemBuilder: (BuildContext context, int index, int realIndex) {
                          return Container(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [

                                  Image.asset(Playerlist[index],height: 350,),

                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(height:50),
                      AnimatedSmoothIndicator(
                        activeIndex: ActiveIndex,
                        count: Playerlist.length,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Colors.cyan,
                          dotColor: Colors.grey.shade300,
                          dotHeight: 15,
                          dotWidth: 30,
                          spacing: 2,
                          radius: 1,
                        ),
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(height:40),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: ElevatedButton(
                child: Text('Vote'),

                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    padding: const EdgeInsets.only(right: 70,left: 70,top: 20,bottom: 20),
                    textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500, color: Colors.white)),
                onPressed:isVoted? () {
                  VotePlayer(ActiveIndex);
                }:null,
              ),
            ),

          ],
        ),
      ),
    );
  }

  Future<void> VotePlayer(int index) async {
    final User? currentUser = await FirebaseAuth.instance.currentUser;
    final Uemail= currentUser?.email;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm '),
          content:  Text(Uemail.toString()+' Please confirm on select '+index.toString()),
          actions: [
            TextButton(
              style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Confirm'),
              onPressed: () {

                final DocumentReference userRef =  _firestore.collection('users').doc(Uemail).collection('LiveVote').doc('Player');
                userRef.set({
                  'PlayerName': 'Mo.Ssalh',
                  'ID': index.toString(),
                }).then((value) {
    showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
    title: Text('Success'),
    backgroundColor: Colors.green,
    content: Text('Your Vote has been Submitted!'),
    actions: [
    TextButton(
    child: Text('OK'),
    onPressed: () {
      isVoted=!isVoted;
    Navigator.of(context).pop();
    Navigator.of(context).pop();
    },
    ),
    ],
    );
    },
    );});


              },
            ),
          ],
        );
      },
    );

  }

}
