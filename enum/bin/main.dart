import 'dart:collection';

enum colors {
  red,
  green,
  blue
}

main(List<String> arguments) {
  print(colors.values);
  print(colors.red);

  List colorList = ['red','green','blue'];
  print(colorList.length);
  print(colorList[1]);

  List thing = new List();
  thing.add(1);
  thing.add('cat');
  thing.add(true);
  print(thing);

  List<int> numbers = new List<int>();
  numbers.add(1);
  numbers.add(2);
  print(numbers);

  //set unordered and do not contain duplicates data
  Set<int> setNumbers = new Set<int>();
  setNumbers.add(1);
  setNumbers.add(1);
  setNumbers.add(2);
  setNumbers.add(4);
  setNumbers.add(3);
  print(setNumbers);

  Queue items = new Queue();
  items.add(1);
  items.add(3);
  items.add(5);
  items.add(2);
  print(items.first);
  items.removeFirst();
  items.removeLast();
  
  print(items);

  Map people = {'dad':'Aof','mom':'kano','daugther':'hacker'};
  print(people);
  print(people['dad']);
  print(people.keys);
  print(people.values);

  Map<String,int> age = new Map<String,int>();
  age.putIfAbsent('dad', ()=>37);
  age.putIfAbsent('mom', ()=>32);
  age.putIfAbsent('daugther', ()=>1);
  print(age);
}
