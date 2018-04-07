class Animal {
  static int _counter = 0;
  String _name = '';
  int _age = 0;
  String bread = '';
  // Animal() {
  //   print("Constructed");
  //   _name = 'garfield';
  // }

  String get name => _name;
  void set name(String value) => _name = value;
  

  Animal (String name,int age, String bread){
    this._name = name; 
    _age = age;
    this.bread = bread;
    _counter++;
    print("counter ${_counter}");
  }

  void sayHello(){
    if(_name.isEmpty){
      print("Hello");
    }else{
      print("Hello ${_name} nice to meet you");
    }
  }

  void sayAgain() => print("Hello ${_name} age ${_age} and ${bread}");

  void _display(String message){
    print("${message}");
  }

  void saySomething(String message) => this._display(message);
  static void run(){
    print("object");
  }
}