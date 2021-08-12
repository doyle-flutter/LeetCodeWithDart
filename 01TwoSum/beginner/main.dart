import 'dart:developer';

void main(){
  void twoSum({required List<int> list, required int target}){
    Stopwatch stopwatch = new Stopwatch()..start();
    List<int?> result = [];
    for(int i = 0; i < list.length; i++){
      for(int j = 0; j < list.length; j++){
        if(i != j){
          if(i+j == target){
            result = [i,j]; 
          }
        }
      } 
    }
    
    print('TwoSum executed in ${stopwatch.elapsed}');
    if(result.length < 1){
      return print("NULL");
    }
    else{
     return result.forEach((int? e) => print("Value(Index): ${e} ( ${list.indexOf(e!)} )")); 
    }
  }
  
  twoSum(list: [2, 15, 7, 13], target: 9);
}
