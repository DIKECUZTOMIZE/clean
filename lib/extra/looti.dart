import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

/// 1. State full with maxin class:
class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  /// 2. globaler Variable:
  AnimationController? mController;

  @override

  ///3. initate : for operation or initialize kuriobor babe us kora hoi

  void initState() {

    super.initState();

    /// i.Iniatialize :Variable with animation:
    mController=AnimationController(vsync: this);

    /// ii.Animation result t reflect aru rebile kuribo babe:Change
    mController!.addListener(() {setState(() {});},);



    /// iii.Animatio start kuribor babe use kora hoi mane judi nije controller use kurile
    /// aru Expplicity karone
   // mController!.forward();



    /// revese mode:
   // mController!.repeat();

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: Text('Lottie'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ///4. result show :
          /// i. loti asset:
          Lottie.asset('assets/animation/lottie/Animation - 1731638661736.json',

            /// ii.time :
          onLoaded: (lottie){
            mController!.duration=lottie.duration;
          },

          /// iii.Controller set
          controller: mController
          ),

          ///  Statr:Button

          ElevatedButton(onPressed:  (){
            /// i.reflect:instate  logabo pare aru button t logabo pare ake
           // mController!.addListener(() {setState(() {});},);

           ///  start animation
          //  mController!.forward();
            mController!.repeat(
              reverse:false
            );

          }, child: Text(
            'Tab'
          ))


        ],
      ),
    );
  }
}