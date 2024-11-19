  main(){

  /// Tow List Create:
  List<int>list1=[1,1,2,3,5,8,13,21,34,55,89];

  List<int>list2=[1,2,3,4,5,8,9,10,11,12,13,];

  /// Duplicat remove:
  Set<int> set1=list1.toSet();
  Set<int> set2=list1.toSet();
  Set<int> commonElement=set1.intersection(set2);
  print(commonElement);

  /// New list :
  List<int>commonList=commonElement.toList();
  print(commonList);

 }