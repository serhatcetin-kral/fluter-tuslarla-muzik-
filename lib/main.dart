
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(muzik_calma());
}

class muzik_calma extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.black54,
        body:DrumPage(),
      ),

    );
  }
}


class DrumPage extends StatelessWidget {

  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                      padding: EdgeInsets.all(8),
                      onPressed: (){
                        player.play('bip.wav');
                      },
                      child: Container(color: Colors.blue,)),
                ),

                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(8),
                      onPressed: (){
                        player.play('bongo.wav');
                      },
                      child: Container(color: Colors.redAccent,)),
                ),
              ],
            ),
          ),
         Expanded(child: Row(
           children: [
             Expanded(
               child: FlatButton(
                   padding: EdgeInsets.all(8),
                   onPressed: (){
                     player.play('clap1.wav');
                   },
                   child: Container(color: Colors.yellow,)),
             ),

             Expanded(
               child: FlatButton(
                   padding: EdgeInsets.all(8),
                   onPressed: (){
                     player.play('clap2.wav');
                   },
                   child: Container(color: Colors.green,)),
             ),
           ],
         ),),
          Expanded(child: Row(
            children: [
              Expanded(
                child: FlatButton(
                    padding: EdgeInsets.all(8),
                    onPressed: (){
                      player.play('clap3.wav');
                    },
                    child: Container(color: Colors.brown,)),
              ),

              Expanded(
                child: FlatButton(
                    padding: EdgeInsets.all(8),
                    onPressed: (){
                      player.play('crash.wav');
                    },
                    child: Container(color: Colors.blueGrey,)),
              ),

            ],
          ),),
          Expanded(child: Row(
            children: [
              Expanded(
                child: FlatButton(
                    padding: EdgeInsets.all(8),
                    onPressed: (){
                      player.play('how.wav');
                    },
                    child: Container(color: Colors.lightGreenAccent,)),
              ),

              Expanded(
                child: FlatButton(
                    padding: EdgeInsets.all(8),
                    onPressed: (){
                      player.play('oobah.wav');
                    },
                    child: Container(color: Colors.red,)),
              ),

            ],
          ),),
          Expanded(child: Row(
            children: [
              Expanded(
                child: FlatButton(
                    padding: EdgeInsets.all(8),
                    onPressed: (){
                      player.play('ridebel.wav');
                    },
                    child: Container(color: Colors.amber,)),
              ),

              Expanded(
                child: FlatButton(
                    padding: EdgeInsets.all(8),
                    onPressed: (){
                      player.play('woo.wav');
                    },
                    child: Container(color: Colors.cyan,)),
              ),

            ],
          ),)
        ],
      ),
    ) ;
  }
}
