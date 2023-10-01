
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ninetplus/Screens/Vote/playerVote.dart';
import 'package:ninetplus/Screens/authenticate/signin.dart';
import '../../services/auth.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:firebase_core/firebase_core.dart';

import '../Vote/coachVote.dart';
import '../Vote/goalVote.dart';
import '../Vote/saveVote.dart';
import '../authenticate/profile.dart';
import '../intro/notsigned.dart';
import 'home.dart';
import 'predict.dart';
import 'trivia.dart';


class Vote extends StatefulWidget {
  @override
  State<Vote> createState() => _HomeState();
}

class _HomeState extends State<Vote> {

  String imageUrl = '';
  String downloadUrl = '';
  int CurrentIndex=0;
  final Screens=[
    Home(),
    Vote(),
    Predict(),
    Trivia(),
    ];
  AuthService _user=AuthService();
  final Imageslist=[
    'assets/images/Player.png',
    'assets/images/Goal.png',
    'assets/images/Coach.png',
    'assets/images/Save.png',
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

    Widget buildImage(String image,int index)=> Container(
      margin: EdgeInsets.symmetric(horizontal:10),
      // color: Colors.grey,
      child: Image.asset(image,fit: BoxFit.cover),
    );

    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
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
                      GestureDetector(
                        onTap: _logout,
                        child: Icon(
                          Icons.logout,
                          size: 40,
                          weight: 100,
                          grade: -25,
                          opticalSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child:
                GestureDetector(
                  onTap: openScreen,
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

                        height: 600,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.zoom,

                        enlargeFactor: 0.5,
                        autoPlayCurve: Curves.decelerate,
                        aspectRatio: 0.1,
                        viewportFraction: 0.5,
                        autoPlay: true,
                      ),
                      itemCount: Imageslist.length,
                      itemBuilder: (BuildContext context, int index, int realIndex) {
                        return Container(
                         child: SingleChildScrollView(
                           child: Column(
                             children: [

                               Image.asset(Imageslist[index],height: 400),
                               Text(Titles[index],style: TextStyle(
                                 fontWeight: FontWeight.w800,
                                 fontSize: 20,
                               )
                                 ,),
                               SizedBox(height:15),
                               Text('Brought to you by :'),
                               Image.asset(Sponserslist[index],height: 70,width: 100,),
                             ],
                           ),
                         ),
                        );
                      },
                    ),
                      SizedBox(height:50),
                      AnimatedSmoothIndicator(
                        activeIndex: ActiveIndex,
                        count: Imageslist.length,
                        effect: ExpandingDotsEffect(
                        activeDotColor: Colors.cyan,
                          dotColor: Colors.grey,
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

            ],
          ),
        ),
      ),

    );
  }
  void openScreen(){
    print(ActiveIndex);
    if(ActiveIndex==0)
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=>PlayerVote()));
    else if(ActiveIndex==1)
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=>CoachVote()));
    else if(ActiveIndex==2)
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=>GoalVote()));
    else if(ActiveIndex==3)
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=>SaveVote()));


    }

    void openProfile(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=>Profile()));
    }

  Future<void> _logout() async {
    await FirebaseAuth.instance.signOut();
    // Redirect to login or home screen after logout
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NotSigned()));

  }

}