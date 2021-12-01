void main() {
  
  void sortColors(List<int> input){   
    // O(nlogn)
    print("🎯 ${input..sort((int p, int n) => p.compareTo(n))}");
  }
  
  sortColors( [2,0,2,1,1,0] ); // [0,0,1,1,2,2]
  sortColors( [2,0,1] ); // [0,1,2]
  sortColors( [0] ); // [0]
  sortColors( [1] ); // [1]

}
