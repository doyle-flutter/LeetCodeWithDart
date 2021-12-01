void main() {
  
  void sortColors(List<int> input){   
    // O(n)
    int i = 0;
    int ea0 = 0;
    int ea1 = 0;
    int ea2 = 0;
    List<int> result = [];
    while( i < input.length ){
      if(input[i] == 0){
        ea0++;
      }
      if(input[i] == 1){
        ea1++;
      }
      if(input[i] == 2){
        ea2++;
      }
      i++;
    }
    while(ea0 > 0){
      result.add(0);
      ea0--;
    }
    while(ea1 > 0){
      result.add(1);
      ea1--;
    }
    while(ea2 > 0){
      result.add(2);
      ea2--;
    }
    
    print("👉 result $result");
  }
  
  sortColors( [2,0,2,1,1,0] ); // [0,0,1,1,2,2]
  sortColors( [2,0,1] ); // [0,1,2]
  sortColors( [0] ); // [0]
  sortColors( [1] ); // [1]

}
