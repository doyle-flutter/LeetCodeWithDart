😈
    
import 'dart:developer';

void main() => (({required List<int> list, required int target}) {
    Stopwatch stopwatch = new Stopwatch()..start();
    Map<int?, int?> map = {};
    List<int?> result = [];
    list.forEach((int number){
      if (map.containsKey(number)) result..add(map[number])..add(list.indexOf(number));
      map[target - number] = list.indexOf(number);
    });
    print('TwoSum executed in ${stopwatch.elapsed}');
    stopwatch.stop();
    if(result.isEmpty) return print("NULL");
    result.forEach((int? e) => print("Value(Index): ${list[e!]} ( ${e} )"));
  })(list: [2, 15, 13, 7], target: 9);
