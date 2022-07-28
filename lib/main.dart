
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
  void callVoice(String ses){
    player.play('$ses.wav');


  }

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
                        callVoice('bip');
                      },
                      child: Container(color: Colors.blue,)),
                ),

                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(8),
                      onPressed: (){
                        callVoice('bongo');
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
                     callVoice('clap1');
                   },
                   child: Container(color: Colors.yellow,)),
             ),

             Expanded(
               child: FlatButton(
                   padding: EdgeInsets.all(8),
                   onPressed: (){
                     callVoice('clap2');
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
                      callVoice('clap3');
                    },
                    child: Container(color: Colors.brown,)),
              ),

              Expanded(
                child: FlatButton(
                    padding: EdgeInsets.all(8),
                    onPressed: (){
                      callVoice('crash');
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
                      callVoice('how');
                    },
                    child: Container(color: Colors.lightGreenAccent,)),
              ),

              Expanded(
                child: FlatButton(
                    padding: EdgeInsets.all(8),
                    onPressed: (){
                      callVoice('oobah');
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
                      callVoice('ridebel');
                    },
                    child: Container(color: Colors.amber,)),
              ),

              Expanded(
                child: FlatButton(
                    padding: EdgeInsets.all(8),
                    onPressed: (){
                      callVoice('woo');
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
