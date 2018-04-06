//import 'package:flowcontrol/flowcontrol.dart' as flowcontrol;

main(List<String> arguments) {
  
  
  int age = 37;
  if(age == 37){
    print("ok");
  }else{
    print("not");
  }

  switch(age){
    case 1:
      print("1");
    break;
    default:
      print(age);
    break;
  }

  List people = ['khomkrid','kano','arnon'];
  for(int i = 0;i<people.length;i++){
    print(people[i]);
  }
  people.forEach((String person){
   print(person);
  });
}
