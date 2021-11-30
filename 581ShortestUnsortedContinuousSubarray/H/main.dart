import 'dart:math' as math;

void main() {
  
  void shortestUnsortedContinuousSubarray(List<int> input){
    int len = input.length - 1;
    int max = input[0];
    int min = input[len];
    int left = -1;
    int right = -1;

    for( int i = 1; i <= len; i++){
      int a = input[i];
      int b = input[len - i];
      a < max ? right = i : max = a;
      b > min ? left = i : min = b;
    }
    print("l : $left / r : $right / max : $max / min : $min / 👉 ${math.max(0, left + right - len + 1)}");
  }
  
  /// 5 : [6, 4, 8, 10, 9] 
  shortestUnsortedContinuousSubarray([2,6,4,8,10,9,15]);
  
  // 4 : [5, 7, 6, 3]
  shortestUnsortedContinuousSubarray([2,5,7,6,3,9,15]);
  
  // 0
  shortestUnsortedContinuousSubarray([1,2,3,4]);
  
  // 0
  shortestUnsortedContinuousSubarray([1]);
  
}
