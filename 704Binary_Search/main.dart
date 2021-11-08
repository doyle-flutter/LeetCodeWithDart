// 704 Binary-Search
// - 주어진 배열에서 값 찾기

// [ 1, 2, 3, 4, 5 ]
// 
//   ^     ^     ^  
//   |     |     |
// left  pivot right

void main(){
  // 1 <= nums.length <= 104
  // -104 < nums[i], target < 104
  // All the integers in nums are unique.
  // nums is sorted in ascending order.
  
  int func(List<int> search, int target){
    int left = 0;
    int right = search.length-1;
    while(left <= right){
      // pivot
      int pivot = (left+right)~/2;
      if( search[pivot] == target){
        return pivot;
      }
      else if( search[pivot] < target ){
        left = pivot + 1;
      }
      else{
        right = pivot - 1;
      }
    }
    return -1; 
    // throw "not Found";
  }  
  // 1.
  // Input: nums = [-1,0,3,5,9,12], target = 9
  // Output: 4
  // Explanation: 9 exists in nums and its index is 4
  print( func([-1,0,3,5,9,12], 9) );
  
  // 2.
  // Input: nums = [-1,0,3,5,9,12], target = 2
  // Output: -1
  // Explanation: 2 does not exist in nums so return -1
  print( func([-1,0,3,5,9,12], 2) );
}
