import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelperSan {

  DbHelperSan._();

 static  DbHelperSan  getInstances()=>DbHelperSan._();

   Database ? myDb;

  Future<Database> initDB()async{

    myDb=myDb ?? await openDB();
    print('db open');
    return myDb!;
   }

   Future<Database> openDB()async{

    var dirPath =await getApplicationDocumentsDirectory();
    var dbPath=join(dirPath.path,'noteDb.db');

   return openDatabase(dbPath,version: 1,onCreate: (db, version) {
     print('db creat');

      db.execute('create table note(n_id integer primary Key autoincrement ,n_title text,n_desc text');
    },);

   }


   ///* 1.Insert:
   Future<bool> addNote ({required String  title,required String  desc})async{

     Database  db= await initDB();

      int rowsEffected=await db.insert('note',{
       'n_title':title,
       'n_desc' :desc,
     });

      // if(rowEffected >0){
      //   return true;
      // }else{
      //   false;
      // }

     return rowsEffected>0;
   }


  ///*2.Select key queris :User k ki note a hoise nai na nai dekha bo loi Logic (screen):
  Future<List<Map<String, dynamic>>> fetchAllNote()async {

    /// db use ato karon insert tor oprt dependend nthake select key a karon
    /// kuntu age khula khai gm napai na insert age khule na selet a age khule khai karone use kora hoi dubar dubar initDB
    /// nija nija controller.


      Database db=await initDB();

      ///user data set kora function:
      /// map mane hl ek studentr data aru List and map combine mane Multiple student r data store,

    List<Map<String,dynamic>> allNotes=await db.query('note');
    return allNotes;
}
}