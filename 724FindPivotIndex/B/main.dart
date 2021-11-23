void main(){
  void func(List<int> input){
    for(int i = 0; i < input.length-1; i++){
      int left = i == 0 ? 0 : input.sublist(0, i).reduce((int p, int n) => p+n);
      int right = i+1 == input.length ? input[i+1] : input.sublist(i+1, input.length).reduce((int p, int n) => p+n);
      if(left == right) return print("index : $i - left : $left - right : $right");
    }
    return print(-1);
  }
  func([1,7,3,6,5,6]); // index : 3 - value : 6
  func([1,2,3]); // -1
  func([2,1,-1]); // index : 0 - value : 2
}
