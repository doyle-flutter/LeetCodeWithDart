void main(){
  
  
  void sum21(List<int> input, {required int target}){
    for(int i = 0; i < input.length; i++){
      for(int j = 1; j < input.length; j++){
        int l = input[i];
        int r = input[j];
        if(l+r == target) return print("👉 $l + $r");
      }
    }
  }
  
  sum21( [1,2,3,4], target: 5);
  
  /// --- 
  
  void sum22(List<int> input, {required int target}){
    input.sort();
    int l = 0;
    int r = input.length-1;
    
    while( l < r ){
      int sum = input[l] + input[r];
      if( sum == target){
        print("👉👉 ${input[l]} + ${input[r]}");
        break;
      }
      else if( sum < target ){
        l++;
        r = input.length;
      }
      r--;
    }
  } 
  
  sum22( [1,3,4,5,8, 2, 7], target: 7 );
}
