import 'dart:developer';

void main(){
  void twoSum({required List<int> list, required int target}){
    Stopwatch stopwatch = new Stopwatch()..start();
    List<int> result = [];
    list.forEach((int i) => list.forEach((int j){
      if(i != j){
        if(i+j == target){
          if(result.isEmpty){
            result = [i,j]; 
          }
        }
      }
    }));
    print('TwoSum executed in ${stopwatch.elapsed}');
    if(result.isEmpty) return print("NULL");
    result.forEach((int? e) => print("Value(Index): ${e} ( ${list.indexOf(e!)} )"));
  }
  twoSum(list: [2, 15, 7, 13], target: 9);
}
