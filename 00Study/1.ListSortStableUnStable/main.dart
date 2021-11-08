import 'package:collection/collection.dart';

// 🎯 Dart List Sort

class Model{
  final String name;
  final int age;
  const Model(this.name, this.age);
}

void main(){
 
  // Data SET
  List<Model> datas = [];
  datas.add(Model("A", 3));
  datas.add(Model("B", 3));
  datas.add(Model("C", 3));
  datas.add(Model("D", 3));
  for(int i in List<int>.generate(100, (index) => index)){
    datas.add(Model("NAME$i", i));
  }

  print("🎯UnStable Sort");
  List<Model> datas2 = List.of(datas);
  datas2.sort((Model prev, Model next) => next.age.compareTo(prev.age));
  for(Model model in datas2){
    print("${model.name} & ${model.age}");
  }
  
  print("🎯Stable Sort");
  List<Model> datas3 = List.of(datas);
  mergeSort(datas3, compare: (Model prev, Model next) => next.age.compareTo(prev.age));
  for(Model model in datas3){
    print("${model.name} & ${model.age}");
  }
  
}
