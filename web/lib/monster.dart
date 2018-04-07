import 'mamal.dart';
import 'myclass.dart';
import 'myClass2.dart';
class Monster extends Mamal with MyClass2 ,MyClass {
  bool hasClaws = true;
  void grol() => print("grrrrr");
  void sayHello(String name) => print('Monster Hello ${name}');
  @override
  void callFire() => print("Fire Feline Fire");
}