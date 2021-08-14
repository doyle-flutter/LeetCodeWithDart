// 👾

void main(){
  
  // #
  // PAYPALISHIRING, numRows = 1
  // -> PYAIHRNAPLSIIG
  
  // # 0.
  // Input : PAYPALISHIRING, numRows = 2
  // Output: PYAIHRNAPLSIIG
  // P  Y   A  I  H  R  N
  //  A   P  L  S  I  I  G
  String input = "PAYPALISHIRING";
  int numRows0 = 2;
  String output0 = "PYAIHRNAPLSIIG";
  print("#0 : ${output0 == Leet(input: input, numRows: numRows0).result}");
  
  // # 1
  // Input : "PAYPALISHIRING", numRows = 3
  // Output: "PAHNAPLSIIGYIR"
  // P   A   H   N
  // A P L S I I G
  // Y   I   R
  int numRows = 3;
  String output1 = "PAHNAPLSIIGYIR";
  print("#1 : ${output1 == Leet(input: input, numRows: numRows).result}");
  
  
  // # 2
  // Input : "PAYPALISHIRING", numRows = 4
  // Output: "PINALSIGYAHRPI"
  // Explanation:
  // P     I    N
  // A   L S  I G
  // Y A   H R
  // P     I
  int numRows2 = 4;
  String output2 = "PINALSIGYAHRPI";
  print("#2 : ${output2 == Leet(input: input, numRows: numRows2).result}");
  
  // # 3
  // Input : "A", numRows = 1
  // Output: "A"
  String input2 = "A"; 
  int numRows3 = 1;
  String output3 = "A";
  print("#3 : ${output3 == Leet(input: input2, numRows: numRows3).result}");
  
  // # ++,
  // Input : PAYPALISHIRING, numRows = 5
  // Output: PHASIYIRPLIGAN
  // P      H
  // A    S   I
  // Y  I      R
  // P L        I   G
  // A            N
  int numRows4 = 5;
  String output4 = "PHASIYIRPLIGAN";
  print("#4 : ${output4 == Leet(input: input, numRows: numRows4).result}");
}

class Leet{
  
  String result = "";
  
  Leet({required String input, required int numRows}){
    this._zigZagConversion(input, numRows);
  }
  
  void _zigZagConversion(String input, int numRows){    
    if(input.isEmpty || numRows <= 0) this.result = "";
    else if(numRows == 1) this.result = input;
    else{
      int step = 2 * numRows - 2;
      for(int i = 0; i < numRows; i++){
        for(int j = i; j < input.length; j += step){
          this.result += input[j];
          if (i != 0 && i != numRows - 1 && (j + step - 2 * i) < input.length) this.result += input[j + step - 2 * i];
        }
      }
    }
    print("\nInput : $input , numRows $numRows \nOutput : ${this.result}");
    return;
  }
  
}
