void main(){
  // 0 <= input.length <= 5 * 10^4
  new Leet(input: "abcabcbb");
  new Leet(input: "bbbbb");
  new Leet(input: "");
  new Leet(input: "pwwkew");
}

class Leet{
  
  final String input;
  Leet({required this.input}){
    this._longestSubstringWithoutRepeatingCharacters(s: this.input);
  }
  
  void _pr() => print("Output - result ${this._result.isEmpty ? '\"\"' : this._result} / length: ${this._result.length}");
  
  String _result = "";
  String _ing = "";
  
  void _longestSubstringWithoutRepeatingCharacters({required String s}){
    if(s.isNotEmpty){
      List<String> _input = s.split("").toList();
      for(int i = 0; i < _input.length; i++){
        if(i == 0) this._ing =_input[i];
        else{
          if(this._ing.indexOf(input[i]) < 0) this._ing+=input[i];
          else{
            if(this._result.length < this._ing.length) this._result = this._ing;
            this._ing = input[i];
          } 
        }
      }
    }
   this._pr();
  }
}
