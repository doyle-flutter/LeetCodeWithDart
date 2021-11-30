/// [입문] * mergeIntervals 활용
/// - 합쳐질 첫 요소와 마지막 요소 찾기

void main(){

  void mergeIntervals00(List<List<int>> input){
    int min = input[0][0];
    int max = 0;
    
    for(List<int> l in input){
      if(min > l[0]){
        min = l[0];
      }
      if(max < l[1]){
        max = l[1];
      }
    }
    print("min : $min / max : $max");
  }
  
  mergeIntervals00( [[1,3],[2,6],[8,10],[15,18]] );
  mergeIntervals00( [[1,4],[4,5]] );
  
}
