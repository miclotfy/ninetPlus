import 'package:flutter/material.dart';

class CoachVote extends StatefulWidget {
  const CoachVote({super.key});

  @override
  State<CoachVote> createState() => _CoachVoteState();
}

class _CoachVoteState extends State<CoachVote> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height:50),
          Text('Coach of the Month',style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          )),
        ],
      ),
    );
  }
}
