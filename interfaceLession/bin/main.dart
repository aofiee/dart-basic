import 'package:interfaceLession/manager.dart';
import 'package:interfaceLession/employee.dart';
import 'package:interfaceLession/racecar.dart';
main(List<String> arguments) {
  RaceCar race = new RaceCar();
  race.honk();
  Manager bob = new Manager();
  bob.test();
  Employee employee = new Employee();
  employee.test();

  List<int> m =new List<int>();
  m.addAll([1,2,3,4,5,6]);
  print(m);
  add<int>(1,4);
  add<String>('khom','krid');

  addNum<int>(1,4);
  //addNum<String>('khom','krid');
}

void add<T>(T a,T b) {
  print(a+b);
}
void addNum<T extends num>(T a,T b) => print(a+b);