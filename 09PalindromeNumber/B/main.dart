void main() {
  Leet.alindromeNumber(121);
  Leet.alindromeNumber(-121);
  Leet.alindromeNumber(10);
  Leet.alindromeNumber(-101);
  Leet.alindromeNumber(101);
  Leet.alindromeNumber(404);
}

class Leet{
  
  Leet.alindromeNumber(int input){
    this._init(input);
  }
  
  void _init(int input){
    if(input.isNegative) return print("ERROR (1)");
    int _input = int.parse(input.toString().split("").toList().reversed.toList().join(""));
    return input == _input ? print(input) : print("ERROR (2)");
  }

}
