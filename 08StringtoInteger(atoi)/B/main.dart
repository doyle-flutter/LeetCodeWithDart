import 'dart:math';

void main() {
  // # Input Range [-2^31, 2^31 - 1]
  print( Leet.atoi("42") );
  print( Leet.atoi("   -42") );
  print( Leet.atoi("   +42") );
  print( Leet.atoi("   +4+2") );
  print( Leet.atoi("4193 with words") );
  print( Leet.atoi("words and 987") );
  print( Leet.atoi("qweekjhasd12") );
  print( Leet.atoi("198237687jkashdjhkasd") );
  print( Leet.atoi("   -123897+123") );
  print( Leet.atoi("   +123897+123") );
  print( Leet.atoi("   +123897qwelkajsd") );
  print( Leet.atoi((pow(2,31)-1).toString()));
  print( Leet.atoi((pow(2,31)).toString()));
  print( Leet.atoi((-(pow(2,31))).toString()));
  print( Leet.atoi(((-(pow(2,31)))-1).toString()));
}

class Leet{
  
  static int atoi(String input){
    int _plusUnits = 43;
    int _negativeUnits = 45;
    int _minUnits = 48;
    int _maxUnits = 57;
    int _minValue = -pow(2,31).toInt();
    int _maxValuee = (pow(2,31)-1).toInt();
    
    String _input = input.replaceAll(" ", "");
    int _inputFirstWordCheck = _input.codeUnits[0];
    if(_inputFirstWordCheck < _plusUnits 
       || (_inputFirstWordCheck > _plusUnits && _inputFirstWordCheck < _negativeUnits) 
       || (_inputFirstWordCheck > _negativeUnits && _input.codeUnits[0] < _minUnits) 
       || _inputFirstWordCheck > _maxUnits) return 0;
    String _processInput = "";
    for(String p in _input.split("").toList()){
      if(_processInput.isEmpty || p.codeUnits[0] == _plusUnits){}
      if(_processInput.isNotEmpty && p.codeUnits[0] == _plusUnits || p.codeUnits[0] > _maxUnits){break;} 
      _processInput += p;
    }
    int _result = int.parse(_processInput.isEmpty ? "0" : _processInput);
    return _result >= _maxValuee ? _maxValuee : _result <= _minValue ? _minValue : _result;
  }

}
