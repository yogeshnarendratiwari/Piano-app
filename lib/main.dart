import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(
    const MaterialApp(home: Scaffold(
      backgroundColor: Colors.black,
      body : piano(),
    ),)
  );
}

class piano extends StatelessWidget {
  const piano({Key? key}) : super(key: key);

  Expanded keys(Color color,int sound){
    return  Expanded(child:
    TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed:(){
        play_sound(sound);
      },
      child: const SizedBox(
        width: 0.0,
        height: 0.0,
      ),

    ));
  }

  void play_sound(int sound_number){
    final player = AudioCache();
    player.play('note$sound_number.wav');
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Column(

           crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             keys(Colors.red,1),
            keys(Colors.white,2),
            keys(Colors.green,3),
            keys(Colors.blue,4),
            keys(Colors.orange,5),
            keys(Colors.deepOrangeAccent,6),
            keys(Colors.lightGreen,7),



          ],
        ),
    );
  }
}
