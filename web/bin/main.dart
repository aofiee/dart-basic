import 'package:http/http.dart' as http;
import 'package:web/web.dart' as web;
import 'package:web/myclass.dart';
import 'package:web/animal.dart';
import 'package:web/dog.dart';
import 'package:web/feline.dart';

main(List<String> arguments) {
  var url = "http://www.google.com";
  // http.get(url).then((response){
  //   print(response.headers);
  //   print(response.statusCode);
  //   print(response.body);
  // });

  Feline fel = new Feline();
  print(fel.hasBackBone);
  fel.callFire();
  fel.sayHello("Aofiee");
  
  MyClass mine = new MyClass();
  mine.sayHello("Khomkrid");
  // Animal cat = new Animal("Garfield");
  Animal cat = new Animal("Aofiee", 37, "thai");
  Animal dog = new Animal("Aofiee", 37, "thai");
  Animal.run();
  // cat.sayHello();
  cat.sayAgain();
  cat.bread = "Eng";
  cat.sayAgain();
  cat.saySomething("halo halo");

  cat.name = "setter";//setter
  print(cat.name);//getter

  Dog code = new Dog(5, "sourcecode");
  print("${code.name} is ${code.ageInDogYears()}");
}
