void main(){
  void func(List<int> input){
    int total = input.reduce((int p, int n) => p+n);
    int left = 0;
    int right = total;
    int passPivot = 0;
    for(int i = 0; i < input.length-1; i++){
      int v = input[i];
      right -= v;
      left += passPivot;
      if(left == right){
        return print("index : $i - left : $left - right : $right");
      }
      passPivot = v;
    }
    return print(-1);
  }
  func([1,7,3,6,5,6]); // index : 3 - value : 6
  func([1,2,3]); // -1
  func([2,1,-1]); // index : 0 - value : 2
}
