void main(){
  
  Leet(li1: [], li2: []);
  Leet(li1: [0], li2: [0]);
  Leet(li1: [], li2: [1]);
  Leet(li1: [2], li2: []);
  Leet(li1: [1,3], li2: [2]);
  Leet(li1: [1,2], li2: [3,4]);
  Leet(li1: [1,2,3], li2: [4,5,6]);
  Leet(li1: [1,2,4,3], li2: [6,5]);
  Leet(li1: [1,2,3,5,4], li2: [4,5]);
  Leet(li1: [5,4], li2: [4,5,1,2,3]);
  
}

class Leet{
  
  final List<int> li1;
  final List<int> li2;
  Leet({required this.li1, required this.li2}){
    this._medianofTwoSortedArrays(l1: this.li1, l2:this.li2);
  }
  
  double _output = 0.0;
  List<int?> _outputLi = [];
  void _result(List<int?> li) => print("Input : ${this.li1} , ${this.li2} \nList : $li \nMidiumList : ${this._outputLi} \nOutput : ${this._output} \n");
  
  
  void _medianofTwoSortedArrays({required List<int?> l1, required List<int?> l2}){
    List<int?> _li = (l1+l2).toSet().toList()..sort();
    if(_li.isNotEmpty){
      if(_li.length == 1){
        this._output = _li[0]?.toDouble() ?? 0.0;
        _outputLi.add(_output.floor());
      }
      else{
        if(_li.length % 2 == 1){
          int _midiumIndex = (_li.length/2).floor();
          _outputLi.add(_li[_midiumIndex]!);
          this._output = _li[_midiumIndex]!.toDouble();
        }
        else{
          int _midiumIndex = (_li.length/2).floor()-1;
          _outputLi.add(_li[_midiumIndex]!);
          _outputLi.add(_li[_midiumIndex+1]!);
          this._output = (_li[_midiumIndex]!.toDouble() + _li[_midiumIndex+1]!.toDouble())/2;
        }
      }
    }
    return this._result(_li);
  }
}
