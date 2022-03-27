List<int> Intersection (List<int> list1 , List<int> list2){
  
  List<int> intersection = [] ; 
  for (int i = 0 ; i<list1.length ; i++)
  {
    if(list2.contains(list1[i])&& !intersection.contains(list1[i])){
      intersection.add(list1[i]);
    }
  }
    for (int i = 0 ; i<list2.length ; i++)
  {
    if(list1.contains(list2[i])&& !intersection.contains(list2[i])){
      intersection.add(list2[i]);
    }
  }
  
  return intersection;
}


void main (){
List<int> list1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
List<int> list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
List<int> intersection = Intersection(list1, list2);
print("intersection : ${intersection}");
}