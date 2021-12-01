void main(){

  void mergeIntervals(List<List<int>> input){
    List<List<int>> result = [];
    input.sort((List<int> p, List<int> n) => p[0].compareTo(n[0]));
    print("👉 input sort : $input");
    int i = 0;
    int end = -1;
    while(i < input.length){
      if(result.isEmpty){
        result.add(input[i]);
        end = input[i][1];
      }
      else{
        if(end >= input[i][0]){
          result[i-1][1] = input[i][1];
        }
        else{
          result.add(input[i]);
        }
      }
      i++;
    }
    print("🎯 $result \n");
  }

  mergeIntervals( [ [1,3],[8,10], [15,18], [2,6] ] );
  mergeIntervals( [ [1,4], [4,5] ] );
  mergeIntervals( [ [1,5], [3,7], [10,15], [8, 16] ] );

}
