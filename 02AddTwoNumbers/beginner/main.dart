import 'dart:developer';

void main(){
  
  String pr(List<int> li) => li.reversed.toList().reduce((int prev, int next) => int.parse(prev.toString()+next.toString())).toString();
 
  void addTwoNum({required List<int> fir, required List<int> sec}){
    
    List<int> _long = [];
    List<int> _short = [];
    
    if(fir.length >= sec.length){
      _long = fir.reversed.toList();
      _short = sec.reversed.toList();
    }
    else{
      _long = sec.reversed.toList();
      _short = fir.reversed.toList();
    }
    
    List<int> result = [];
    int up = 0;
    int v = 0;
    Stopwatch stopwatch = new Stopwatch()..start();
    for(int i = 0; i < _long.length; i++){
      v = up+_long[i];
      if(_short.length > i) v += _short[i];
      if(v >= 10){
        up = 1; 
        result.add(int.parse(v.toString()[1]));
        if(_long.length-1 == i) result.add(up);
      }
      else{
        result.add(v);
        up = 0;
      }
    }
    print('🎯AddTwoNumbers : ${stopwatch.elapsed}');
    stopwatch.stop();
    print("Input: L1 = $_long, L2 = $_short");
    print("Output : $result");
    print("Explanation : ${pr(_long)} + ${pr(_short)} = ${pr(result)}");
    print('\n');
    return;
  }
  
//   Test
//   addTwoNum(fir: [1,2,3], sec: [3,2,1]); // 321 + 123 = 444 -> [4,4,4]
//   addTwoNum(fir: [1,2,3], sec: [1,2,...[3,2,1]]); // 321 + 12321 = 12444 -> [4,4,4,2,1]
//   addTwoNum(fir: [2,4,3], sec: [5,6,4]); // 342 + 465 = 807 -> [7,0,8]
  addTwoNum(fir: [9,9,9,9,9,9,9], sec: [9,9,9,9]); // 9999999 + 9999 = 10009998 -> [8,9,9,9,0,0,0,1]
}
