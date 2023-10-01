import 'package:flutter/material.dart';

class GoalVote extends StatefulWidget {
  const GoalVote({super.key});

  @override
  State<GoalVote> createState() => _GoalVoteState();
}

class _GoalVoteState extends State<GoalVote> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height:50),
          Text('Goal of the Month',style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          )),
        ],
      ),
    );
  }
}
