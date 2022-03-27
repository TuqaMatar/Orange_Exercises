
List<int> remove_duplicates (List<int> list){
  List<int> no_dup_list = [];

  for (int i = 0 ; i<list.length ; i++){
    if(!no_dup_list.contains(list[i])){
    no_dup_list.add(list[i]);
    }
  }
  return no_dup_list ;
}

void main() 
{
  List<int> list = [1,2,3,3,4,5,6,7,5,6];
  print(remove_duplicates(list));

}