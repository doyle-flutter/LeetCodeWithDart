void main(){
  
  // @
  // 1 <= s.length <= 1000
  // s consist of only digits and English letters.
    
  // # 1
  // Input: s = "babad"
  // Output: "bab"
  // Note: "aba" is also a valid answer.
  Leet(input: "babad");
  
  // # 2
  // Input: s = "cbbd"
  // Output: "bb"
  Leet(input: "cbbd");
  
  // # 3
  // Input: s = "a"
  // Output: "a"
  Leet(input: "a");
  
  // # 4
  // Input: s = "ac"
  // Output: "a"
  Leet(input: "ac");
  
  // # 5 ++
  Leet(input: "level"); // level
  Leet(input: "rotator"); // rotator
  Leet(input: "stop"); // s
}

class Leet{
  
  String input = "";
  
  Leet({required this.input}){
    this._longestPalindromicSubstring(this.input);
  }
 
  void _result(String output) => print("Input : ${this.input} \nOuput : $output \n");
  
  void _longestPalindromicSubstring(String s){
    List<String> ls = s.split("").toList();
    if(ls.length < 2) return this._result(ls[0]);
    if(ls.length == 2 && ls[0] == ls[1]) return this._result(ls.reduce((String p, String n) => p+=n));
    if(ls.length == 2 && ls[0] != ls[1]) return this._result(ls[0]);
    for(int i = 0; i < (ls.length%2 > 0 ? (ls.length/2).floor() : (ls.length/2).floor()-1); i++){
      if(ls[i] != ls[ls.length-i-1]){
        if(ls[i+1] == ls[ls.length-i-1]) this._longestPalindromicSubstring(ls.getRange(i+1,ls.length-i).toList().reduce((String p, String n) => p+=n));  
        else this._longestPalindromicSubstring(ls.getRange(i,ls.length-i-1).toList().reduce((String p, String n) => p+=n));
        break;
      }
      else return this._result(ls.reduce((String p, String n) => p+=n));
    }
  }
  
}
