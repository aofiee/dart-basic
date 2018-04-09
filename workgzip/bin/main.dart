import 'dart:io';
import 'dart:convert';

main(List<String> arguments) {
  String data = '';
  for(int i = 0;i<100;i++){
    data = data + 'Hello World\r\n';
  }
  List original = UTF8.encode(data);
  List compressed = GZIP.encode(original);
  List decompressed = GZIP.decode(compressed);

  print("Original: ${original.length}");
  print("Compressed: ${compressed.length}");
  print("Decompressed: ${decompressed.length}");

  String decoded = UTF8.decode(decompressed);
  assert(data == decoded);
}
