void main() {
  LeetCode().containerWithMostWater([1,8,6,2,5,4,8,3,7]);
  LeetCode().containerWithMostWater([1,1]);
  LeetCode().containerWithMostWater([4,3,2,1,4]);
  LeetCode().containerWithMostWater([1,2,1]);
}

class LeetCode{
  void containerWithMostWater(List<int> input){
    List _l = input.map((int i){
      List<int> _re = input.map((int j){
        int _length = (input.lastIndexOf(j) - input.indexOf(i)) <= 0 ? 1 : (input.lastIndexOf(j) - input.indexOf(i));
        return (i >= j ? j : i) * _length;
      }).toList()..sort();
      return _re[_re.length-1];
    }).toList()..sort();
    print(_l[_l.length-1]);
  }
}
