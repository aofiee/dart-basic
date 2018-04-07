import 'mamal.dart';

class Feline extends Mamal {
  bool hasClaws = true;
  void grol() => print("grrrrr");
  void sayHello(String name) => print('Feline Hello ${name}');
  @override
  void callFire() => print("Fire Feline Fire");
}