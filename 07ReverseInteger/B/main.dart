import 'dart:math';

void main(){

  // [-2^31, 2^31 - 1]
  Leet()
    ..reverseInteger(321)
    ..reverseInteger(-123)
    ..reverseInteger(120)
    ..reverseInteger(0)
    ..reverseInteger(pow(2,31).toInt())
    ..reverseInteger(pow(2,31).toInt() + 1)
    ..reverseInteger((-(pow(2,31).toInt()) - 1))
    ..reverseInteger((-(pow(2,31).toInt()) - 2));
  
}

class Leet{
  
  void reverseInteger(int input){
    if(input == 0) return print(input);
    if(input <= -(pow(2,31).toInt()) || input >= (pow(2,31)).toInt()-1) return print("Error");
    int _result = int.parse(input.abs().toString().split("").toList().reversed.toList().join());
    return input.isNegative ? print( _result * -1) : print(_result);
  }
  
}
