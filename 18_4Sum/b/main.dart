void main(){
  
  // *
  // 0 <= a, b, c, d < n
  // a, b, c, and d are distinct.
  // nums[a] + nums[b] + nums[c] + nums[d] == target
  // 1 <= nums.length <= 200
  // -109 <= nums[i] <= 109
  // -109 <= target <= 109

  List<int> nums = [];
  
  void func(List<int> input, target){
    input = List<int>.of(input);
    print("✋Start : $input");
    print("👉 End : $input");
  } 
  
  // 1.
  // Input: nums = [1,0,-1,0,-2,2], target = 0
  // Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
  func( 
    [1,0,-1,0,-2,2], 
    0 
  );
  
  // 2.
  // Input: nums = [2,2,2,2,2], target = 8
  // Output: [[2,2,2,2]]
  func( 
    [2,2,2,2,2], 
    8
  );
}
