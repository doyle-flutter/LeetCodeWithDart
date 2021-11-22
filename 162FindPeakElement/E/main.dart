void main(){
  void func(List<int> input){ 
    for(int i = 0; i < input.length; i++){
      if(i + 2 < input.length){
        int f = input[i];
        int s = input[i+1];
        int t = input[i+2];
        if(s > f && s > t){
          print("index : ${i+1} - value : ${input[i+1]}");
        }
      }
    }
  }

  func([1,2,3,1]); // index : 2 - value : 3
  func([1,2,1,3,5,6,4]); // index : 1 - value : 2 / index : 5 - value : 6
}
