
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Package:Page_treansition(yasinilhan)
/// Tranjation Modification : eta pager pora duta page loi jua: Hero Animation
void main(){

  runApp( App());
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

class  HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar: AppBar(
         title: Text('Home Page'),
       ),
       body: GridView.builder(gridDelegate:   SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount:5,
         mainAxisSpacing: 10,
         crossAxisSpacing: 10,
         childAspectRatio: 5/5,),

         itemCount: 50,
         itemBuilder: (context, index) =>
          InkWell(
           onTap: () {

             Navigator.push(context, MaterialPageRoute(builder: (context) =>Page1(mIndex:index,) ,));
           },


           ///  Hero Animation: tag same hobo lage: Hero t indiviual item t
           ///  eta tag  use kurile manage kuri loi  but multiple item t eta
           ///  tag use kurile errose show kuribo mane manag kuribo nuare eta tagot tatia error
           ///  solve kuribor babe uniqe tag hero use kuribi lagibo jate manage hoi jai ,
           ///  Index r though di error solve kuribo pare aema sai
           ///
           child: Hero(tag:'$index',


             child: SizedBox(

                 height: 100,
                 width: 100,
                 child: Image.asset('assets/image/Categories/bg_animal.jpeg'),
               ),
             ),

             ///  Normal:hero
             //  SizedBox(
             //
             //   height: 100,
             //   width: 100,
             //   child: Image.asset('assets/image/Categories/bg_animal.jpeg'),
             // ),
         )  ),
     );
  }
}


class  Page1 extends StatelessWidget{

  Page1({required this.mIndex});
  int mIndex;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar: AppBar(
         title: Text('Page1'),
       ),
       body: SizedBox(
         height: 300,
         width:double.infinity,

         /// Hero Tag same hobo lage:
         child: Hero(tag: '$mIndex',

           child: SizedBox(
               width: double.infinity,
               child: Image.asset( 'assets/image/Categories/bg_classic.jpg')),
         ),
       ),
     );
  }
}