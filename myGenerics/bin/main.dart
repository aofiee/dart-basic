import 'package:myGenerics/myGenerics.dart' as myGenerics;
import 'package:myGenerics/counter.dart';

main(List<String> arguments) {
  List values = [1,1,1,1,1,1];
  print(add(1,values));

  Counter<double> d = new Counter<double>();
  d.addAll([1.0,2.0,3.0]);
  d.total();
}

T add<T extends num>(T value,List<T> items){
  T ret = value;
  items.forEach((value){
    ret = ret + value;
  });
  return ret;
}