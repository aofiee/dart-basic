import 'dart:io';
main(List<String> arguments) {
  String path = "/Users/skulltree/Documents/TwinSynergyProjects/dart/filesystems";
  Directory dir = new Directory(path);
  if(dir.existsSync()){
    print("existsSync");
  }else{
    print("not found");
  }

  Directory d = Directory.systemTemp.createTempSync();
  print(d.path);

  if(d.existsSync()){
    print("removing ${d.path}");
    //d.deleteSync();
  }else{
    print("Could not find ${d.path}");
  }

  Directory d2 = Directory.current;
  print(d2.path);
  List<FileSystemEntity> list = d2.listSync(recursive: true);
  print("Entries in list ${list.length}");
  list.forEach((FileSystemEntity value){
    FileStat stat = value.statSync();
    print("Name ${value.path}");
    print("Type ${stat.type}");
    print("Change ${stat.changed}");
    print("Modified ${stat.modified}");
    print("Access ${stat.accessed}");
    print("Mode ${stat.mode}");
    print("Size ${stat.size}");
    print("-----------------------------");
  });

  Directory rw = Directory.current;
  print("Path ${rw.path}");
  File file = new File(rw.path+"/myfile.txt");
  writeFile(file);
  readFile(file);
}

void writeFile(File file){
  //Append , Write
  RandomAccessFile raf = file.openSync(mode: FileMode.APPEND);
  raf.writeStringSync("Hello World");
  raf.flushSync();
  raf.close();
}

void readFile(File file){
  if(!file.existsSync()){
    print("file not found");
    return;
  }
  print("Reading ....");
  print(file.readAsStringSync());
  print("Reading byte.....");
  List values = file.readAsBytesSync();
  values.forEach((value) => print(value));

}