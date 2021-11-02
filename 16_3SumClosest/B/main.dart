// @ 1.
// Input: nums = [-1,2,1,-4], target = 1
// Output: 2
// Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2)

// @ 2.
// Input: nums = [0,0,0], target = 1
// Output: 0

// * 조 건
// (1) 3 <= nums.length <= 1000
// (2) -1000 <= nums[i] <= 1000
// (3) -104 <= target <= 104

class Model{
  final List<int> values;
  final int threeSum;
  const Model({required this.values, required this.threeSum});
}

void main() {
  
  void check(List<Model> models, int target){
//     print("models[0] ${models[0].values} === ${models[0].threeSum.abs()}");
//     print("models[0+1] ${models[1].values} === ${models[1].threeSum.abs()}");
    if((models[0].threeSum).abs() - (models[1].threeSum).abs() <= target){
      models.removeAt(1);
    }
    else{
      models.removeAt(0);
    }
    
    if(models.length >= 2){
      check(models, target);
    }
  }
 
  void func(List<int> input, int target){
    if(input.toSet().toList().length < 3){
      Model model = Model(values: input, threeSum: input[0]+input[1]+input[2]);
      print("\n");
      print("🧑‍💻");
      print(model.values);
      print(model.threeSum);
      return;
    }
    List<Model>  models = [];
    input.forEach((int e){
      // print("E :$e");
      int index = input.indexOf(e);
      input.forEach((int v){
        if(e != v){
          // print("- V : $v");
          input.forEach((int t){
            if( e != v && e != t && v != t){
              // print("- - T: $t");
              models.add(Model(values: [e,v,t], threeSum: e+v+t));
            }
          });
        }
      });
    });
    check(models,target);
    print("\n");
    print("🧑‍💻");
    print(models[0].values);
    print(models[0].threeSum);
  }
  
  
  List<int> input1 = [1,2,3,4,5];
  int target1 = 6;
  func(input1, target1);
 
  
  List<int> input2 = [-1,2,1,-4]; 
  int target2 = 1;
  func(input2, target2);
  
  List<int> input3 = [0,0,0]; 
  int target3 = 1;
  func(input3, target3);
    
}
