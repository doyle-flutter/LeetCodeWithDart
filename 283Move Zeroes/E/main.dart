void main(){
  
  void func(List<int> l){
    int vIndex = 0;
    for(int sIndex =0; sIndex < l.length; sIndex++){
      if(l[sIndex] != 0){
        l[vIndex] = l[sIndex];
        vIndex++;
      }
    }
    for(; vIndex < l.length; vIndex++){
      l[vIndex] = 0;
    }
    print(l);
  }
  
  func([0,0,1,2,3]);
  func([0,1,0,2,3]);
  func([1,2,0,0,3]);
  func([1,2,3,0,0]);
  
}
