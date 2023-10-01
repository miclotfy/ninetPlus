import 'package:flutter/material.dart';

class SaveVote extends StatefulWidget {
  const SaveVote({super.key});

  @override
  State<SaveVote> createState() => _SaveVoteState();
}

class _SaveVoteState extends State<SaveVote> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height:50),
          Text('Save of the Month',style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          )),
        ],
      ),
    );
  }
}
