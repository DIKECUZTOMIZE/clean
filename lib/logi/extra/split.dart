
void main(){

}

List<List<Name>>   name2<Name>(List<Name>list,int size){
 return [
    for(int i =0; i< list.length; i+=size)
      list.sublist(i, i+ size >list.length ? list.length : i +size)
     
 ];
}
 List<List<dynamic>> name (List<dynamic>list, int size){
  return [
    for(int i =0; i< list.length; i+=size)  /// i++ = i=i+size
      list.sublist(i, i+ size >list.length ? list.length : i +size)
  ];
 }