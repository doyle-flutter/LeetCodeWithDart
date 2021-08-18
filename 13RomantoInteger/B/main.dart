void main() {
  Leet("III");
  Leet("IV");
  Leet("IX");
  Leet("LVIII");
  Leet("MCMXCIV");
}

class Leet{
  final String input;
  final Map<String, int> _checkList = {'CM':900,'M':1000,'CD':400,'D':500,'XC':90,'C':100,'XL':40,'L':50,'IX':9,'X':10,'IV':4,'V':5,'I':1};
  String _str = "";
  int result = 0;  
  
  Leet(this.input){
    this._str = input;
    _init();
  }
  
  void _init(){
    this._checkList.keys.forEach((String k){
      if(this._str.indexOf(k) >= 0){
        this._str = this._str.replaceFirst(k,"");
        this.result += this._checkList[k] ?? 0;
      }
    });
    if(this._str.length == 0) return print(result);
    this._init();
  }
}
