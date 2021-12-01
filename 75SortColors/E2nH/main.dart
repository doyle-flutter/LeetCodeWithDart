void main() {
  
  void sortColors(List<int> input){   
    // O(n) - In-Place Swap
    int i = 0, l = 0, r = input.length-1, swap = -1;
    
    while(i <= r){
      if(input[i] == 0){
        swap = input[l];
        input[l] = input[i];
        input[i] = swap;
        l++;
        i++;
      }
      else if(input[i] == 2){
        swap = input[i];
        input[i] = input[r];
        input[r] = swap;
        r--;
      }
      else{
        i++;
      }
    }
    print("👉 result $input");
  }
  
  sortColors( [2,0,2,1,1,0] ); // [0,0,1,1,2,2]
  sortColors( [2,0,1] ); // [0,1,2]
  sortColors( [0] ); // [0]
  sortColors( [1] ); // [1]

}
