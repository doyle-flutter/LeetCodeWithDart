void main() {
  Leet(["flower","flow","flight"]);
  Leet(["dog","racecar","car"]);
  
  // +@
  Leet(["flower","ow","oflight"]);
  Leet(["flower","fow","olight"]);
  Leet(["lower","fow","folight"]);
  
}

class Leet{
  final List<String> li;
  String result = "";
  
  Leet(this.li){
    _init();
  }
  
  void _init(){
    this.result = this.li.reduce((String p, String n){
      String s = "";
      for(int i = 0; i < p.length; i++) for(int j = 0; j < n.length; j++) if(p[i] == n[j]) s+=p[i];
      return s;
    });
    print(this.result.isEmpty ? "Error!" : "Common : ${this.result}");
  }
}
