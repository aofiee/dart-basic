import 'dart:io';
import 'dart:convert';

main(List<String> arguments) {
  print("OS: ${Platform.operatingSystem} ${Platform.version}");

  if(Platform.isWindows){
    print("Windows");
  }else if(Platform.isLinux){
    print("Linux");
  }else if(Platform.isMacOS){
    print("OSX");
  }else if(Platform.isIOS){
    print("iOS");
  }else if(Platform.isAndroid){
    print("Android");
  }

  print("Path ${Platform.script.path}");
  print("Exec : ${Platform.executable}");
  print("Env:");
  Platform.environment.keys.forEach((key){
    print("key ${key} ${Platform.environment[key]}");
  });

  //List All file in dir
  Process.run('ls', ['-la']).then((ProcessResult results){
    print(results.stdout);
    print("Exit code : ${results.exitCode}");
  });

  Process.start('cat', []).then((Process process){
    process.stdout.transform(UTF8.decoder).listen((data){
      print(data);
      });
    process.stdin.writeln("Hello World");
    Process.killPid(process.pid);
    process.exitCode.then((int code){
      print("Exit code: ${code}");
      exit(0);
    });

  });

}
