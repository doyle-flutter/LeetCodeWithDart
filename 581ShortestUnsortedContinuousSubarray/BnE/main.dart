void main() {
  
  void shortestUnsortedContinuousSubarray(List<int> input){
    if(input.length <= 1) return print("👉 0 / NONE");
    
    // O(nlogn)
    List<int> prevList = [...input];
    input.sort(); 
    
    // O(n)
    List<int> result = [];
    for(int i = 0; i < input.length; i++){
      if(input[i] != prevList[i]){
        result.add(prevList[i]);
      }
    }
    
    if(result.isEmpty) return print("👉 0 / NONE");
    int l = prevList.indexOf(result[0]);
    int r = prevList.indexOf(result[result.length-1]);
    print("👉 ${r - l + 1} / input : ${prevList.getRange(l,r+1).toList()}");
    return;
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
