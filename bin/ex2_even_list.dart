

List<int> evenList ( List<int> list){
  List<int> evenList = [] ; 
  for ( int i=0 ; i<list.length ; i++){
    if (list[i]%2==0){
      evenList.add(list[i]);
    }
  }
return evenList ;
}

void main()
{
 List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]; 
 print(evenList(a));
}