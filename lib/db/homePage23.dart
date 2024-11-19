
import 'package:clean/logi/db/dbHelperSan.dart';
import 'package:flutter/material.dart';

class HomePage23 extends StatefulWidget{

 HomePage23({super.key});

  @override
  State<HomePage23> createState() => _HomePage23State();
}

class _HomePage23State extends State<HomePage23> {

  DbHelperSan dbHelper =DbHelperSan.getInstances();

  List<Map<String,dynamic>>myData=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValueNote();

  }

  void getValueNote()async{
    myData= await dbHelper.fetchAllNote();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Text('Home Page'),
       ),


       body: myData.isNotEmpty ? ListView.builder(
          itemCount: myData.length,
         itemBuilder: (context, index) =>ListTile(
           title:myData[index]['n_title'] ,
           subtitle:myData[index]['n_desc'] ,
           trailing: SizedBox(
             width: 100,
             child: Row(
               children: [
                 IconButton(onPressed:  (){}, icon: Icon(Icons.update)),
                 IconButton(onPressed:  (){}, icon: Icon(Icons.delete,color: Colors.red,))
               ],
             ),
           ),


         )
         ):

        Center(child: Text(' not add not '),) ,



       floatingActionButton: FloatingActionButton(onPressed:  ()async{

          /// global bona hoise karon bar bar use kora karon:
         //DbHelperSan dbHelper=DbHelperSan.getInstances();

         bool check= await dbHelper.addNote(title: 'My Note', desc: 'i am sanjit');

         if(check){
           print('successfull');
           getValueNote();
         }else {
           print('faild at note');

         }
       },

   child:Text('tab'),),
     );
  }
}