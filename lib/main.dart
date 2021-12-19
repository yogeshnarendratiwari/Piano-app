import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(
    const MaterialApp(home: Scaffold(
      backgroundColor: Colors.white,
      body : piano(),
    ),)
  );
}

class piano extends StatelessWidget {
  const piano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
