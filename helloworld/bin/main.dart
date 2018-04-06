/*
hello world
wtf!!!
*/
import 'package:helloworld/helloworld.dart' as helloworld;

main(List<String> arguments) {
  bool isOn;
  bool isDog = false;
  print(isDog);
  print("isOn = ${isOn}");
  isOn = true;
  print("isOn type ${isOn.runtimeType}");

  num age = 0;
  int people = 6;
  double temp = 37.5;

  int test = int.parse('12');
  print(test);

  int err = int.parse('12.222',onError: (source)=>null);
  print(err);
  
  String hello = "Khomkrid Lerdprasert";
  print(hello);
  String myname = hello.substring(0,8);
  print("My name is ${myname}");
  int index = hello.indexOf(" ");
  String lastname = hello.substring(index).trim();
  print("Last name is ${lastname}");
  print(hello.length);
  print(hello.contains("Lerd"));

  List parts = hello.split(" ");
  print(parts);
  print(parts[0]);
  print('Hello world: ${helloworld.calculate()}!');
}
