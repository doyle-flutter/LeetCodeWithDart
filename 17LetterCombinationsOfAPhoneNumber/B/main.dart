// @ 1.
// Input: digits = "23"
// Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

// @ 2.
// Input: digits = ""
// Output: []

// @ 3.
// Input: digits = "2"
// Output: ["a","b","c"]

// Constraints
// 0 <= digits.length <= 4
// (digits[i] is a digit in the range ['2', '9'])


class Model{
  final int key;
  final List<String> st;
  Model({required this.key, required this.st});
}

void main() {
  
  void resultPrint(int ea, List<String> result) => print("ea : $ea / result : $result");
  
  void oneList(List<String> fir){
    List<String> result = [];
    for(String f in fir){
      result.add(f);
    }
    resultPrint(result.length, result);
    print("(${result.length}ea = ${fir.length})");
  }
  
  void twoList(List<String> fir, List<String> sec){
    List<String> result = [];
    for(String f in fir){
      for(String s in sec){
        result.add(f+s);
      }
    }
    resultPrint(result.length, result);
    print("(${result.length}ea = ${fir.length} * ${sec.length})");
  }
  
  void threeList(List<String> fir, List<String> sec, List<String> three){
    List<String> result = [];
    for(String f in fir){
      for(String s in sec){
        for(String t in three){
          result.add(f+s+t);
        }
      }
    }
    resultPrint(result.length, result);
    print("(${result.length}ea = ${fir.length} * ${sec.length} * ${three.length})");
  }
  
  void fourList(List<String> fir, List<String> sec, List<String> three, List<String> four){
    List<String> result = [];
    for(String f in fir){
      for(String s in sec){
        for(String t in three){
          for(String fo in four){
            result.add(f+s+t+fo);
          }
        }
      }
    }
    resultPrint(result.length, result);
    print("(${result.length}ea = ${fir.length} * ${sec.length} * ${three.length} * ${four.length})");
  }
  
  void func(String inputString, List<Model> pad){
    if(inputString.isEmpty || inputString.length > 5) return print("ERROR");
    
    List<String> _inputStringList = [];
    for(int i = 0; i < inputString.length; i++){
      _inputStringList.add(inputString[i]);
    }
    
    List<Model> models = [];
    for(String inputKey in _inputStringList){
      models.add(pad[int.parse(inputKey)]);
    }
    
    if(models.length == 1) return oneList(models[0].st);
    if(models.length == 2) return twoList(models[0].st, models[1].st);
    if(models.length == 3) return threeList(models[0].st, models[1].st, models[2].st);
    if(models.length == 4) return fourList(models[0].st, models[1].st, models[2].st, models[3].st);
  }
  
  List<Model> pad = [
    Model(key: 0, st: [" "]),
    Model(key: 1, st: ["(",")"]),
    Model(key: 2, st: ["a","b","c"]),
    Model(key: 3, st: ["d","e","f"]),
    Model(key: 4, st: ["g","h","i"]),
    Model(key: 5, st: ["j","k","l"]),
    Model(key: 6, st: ["m","n","o"]),
    Model(key: 7, st: ["p","q","r","s"]),
    Model(key: 8, st: ["t","u","v"]),
    Model(key: 9, st: ["w","x","y","z"]),
  ];
  
  func("2", pad);
  func("23", pad);
  func("234", pad);
  func("2345", pad);
  
  print("\n+😵‍💫");
  func("", pad);
  func("78", pad);
  func("127", pad);
  func("179", pad);
  func("012345", pad);
  func("0123456", pad);

}
