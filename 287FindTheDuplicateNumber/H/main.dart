void main() {
  
  void findTheDuplicateNumber(List<int> input){   
    // O(n)
    int ea = input.length - 1;
    List<int> _input = List.generate(ea, (int i) => i+1);
    int i = 0;
    while(i < _input.length){
      input.remove(_input[i]);
      i++;
    }
    print("👉 result ${input[0]}");
  }
  
  findTheDuplicateNumber([1,2,3,4,2]); // 2
  findTheDuplicateNumber([5,4,3,2,1,3]); // 3
  findTheDuplicateNumber([1,3,4,2,2]); // 2
  findTheDuplicateNumber([3,1,3,4,2]); // 3
  findTheDuplicateNumber([1,1]); // 1
  findTheDuplicateNumber([1,1,2]); // 1

}
