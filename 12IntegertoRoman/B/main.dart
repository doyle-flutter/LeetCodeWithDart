void main() {
  
  // Input: num = 3
  // Output: "III"
  LeetCode.integertoRoman(3);
  
  // Input: num = 4
  // Output: "IV"
  LeetCode.integertoRoman(4);
  
  // Input: num = 9
  // Output: "IX"
  LeetCode.integertoRoman(9);
  
  // Input: num = 58
  // Output: "LVIII"
  // Explanation: L = 50, V = 5, III = 3.
  LeetCode.integertoRoman(58);
  
  // Input: num = 1994
  // Output: "MCMXCIV"
  // Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
  LeetCode.integertoRoman(1994);
  
}

class LeetCode{
  static void integertoRoman(int input){
    if(input < 1) return print("Input Error");
    String _result = "";
    Map<int, String> _value = {1000:'M',900:'CM',500:'D',400:'CD',100:'C',90:'XC',50:'L',40:'XL',10:'X',9:'IX',5:'V',4:'IV',1:'I'};
    while(input != 0){
     for(int k in _value.keys){
       if(input - k >= 0){
         _result+=_value[k];
         input = input - k;
         break;
       } 
     } 
    }
    print(_result);
  }
}
