void main() {
  
  void findTheDuplicateNumber(List<int> input){   
    // O(n^2)
    for(int i = 0; i < input.length; i++){
      for(int j = 0; j < input.length; j++){
        if(i != j){
          if(input[i] == input[j]) return print("👉 result ${input[i]}");
        }
      }
    }
    print("👉 result 1");
  }
  
  findTheDuplicateNumber([1,2,3,4,2]); // 2
  findTheDuplicateNumber([5,4,3,2,1,3]); // 3
  findTheDuplicateNumber([1,3,4,2,2]); // 2
  findTheDuplicateNumber([3,1,3,4,2]); // 3
  findTheDuplicateNumber([1,1]); // 1
  findTheDuplicateNumber([1,1,2]); // 1

}
