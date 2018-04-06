import 'dart:io';
import 'dart:async';
import 'package:inputoutput/inputoutput.dart' as inputoutput;

main(List<String> arguments) {

stdout.write("What is your name?\r\n");
String name = stdin.readLineSync();
name.isEmpty ? stderr.write("Name is empty") : stdout.write("Your name is ${name}\r\n");
}
