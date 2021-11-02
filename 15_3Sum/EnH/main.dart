😈

void main(){
  
  Leet(input: [-1,0,1,2,-1,-4]);
  Leet(input: [0]);
  Leet(input: []);
  
}

class Leet{
  Leet({required List<int> input}){
    _init(input..sort());
  }
  
  List<List<int>> result = [];
  
  void _init(List<int> l){
    for(int i=0; i<l.length-2; i++){ 
      if(i != 0 && l[i] == l[i-1]) continue; 
      int j = i+1; 
      int k = l.length-1; 
      while(j<k){ 
        if(l[i]+l[j]+l[k] == 0){ 
          List<int> listIn = []; 
          listIn..add(l[i])..add(l[j])..add(l[k]); 
          this.result.add(listIn); 
          j++; 
          k--; 
          while(j<k && l[j] == l[j-1]) j++; 
          while(j<k && l[k] == l[k+1]) k--;
        }
        else if(l[i]+l[j]+l[k] > 0) k--; 
        else j++; 
      } 
    } 
    print(this.result);
  }
}
