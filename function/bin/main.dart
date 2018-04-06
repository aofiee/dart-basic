
main(List<String> arguments) {
  test();
  getName("Fuck you");
  print(addMath(4, 5));
  getSurname();
  getSurname("Lerdprasert");
  int a = recangle(width: 100,height: 200);
  print(a);
  download("aofiee.txt");
  download("aofiee.txt",port: 8080);
  var myDownload = addMath;
  print(myDownload(10,2));

  var rec = recangle;
  print(rec(width:10,height:10));

  (){
    print("cccccc");
  };

  List peoples = ['aof','air','hacker'];
  peoples.where((String name){
    switch (name){
      case 'aof':
        return true;
      break;
    }
  }).forEach(print);
}

void test(){
  print("testing...");
}

void getName(String name){
  print(name);
}

int addMath(int a,int b) {
  return a+b;
}

void getSurname([String name = '']){
  if(name.isNotEmpty) {
    name = name.padLeft(name.length+1);
  }
  print("hello${name}");
}

int recangle({int width,int height}){
  return width*height;
}

void download(String file,{int port:80}){
  print("download ${file} on port ${port}");
}

