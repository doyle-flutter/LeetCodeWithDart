void main(){
  
  // O(log n) -> binary search algorithm
  
  void func(List<int> input){ 
    int left = 0; // 첫 값
    int right = input.length-1; // 끝 값
    while(left < right){
      int pivot = (left + right)~/2;
      int nums = input[pivot]; // 중간 값
      if(nums < input[pivot+1]){ // 중간 값이 우측보다 작은 경우 피크는 우측에 있다
        left = pivot + 1;
      }
      else{ // // 중간 값이 우측보다 큰 경우 피크는 좌측(포함)에 있다
        right = pivot;
      }
    }
    
    print("index : $left - value : ${input[left]}");
    return; 
  }
  
  func([1,2,3,1]); // index : 2 - value : 3
  func([1,2,1,3,5,6,4]); // index : a - value : 2 / index : 5 - value : 6
}
