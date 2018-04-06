main(List<String> arguments) {
  try {
    int age;
    int dogyear = 7;
    if(age == null) throw new NullThrownError();
    print(age*dogyear);

  } on NullThrownError {
    print("NullThrownError");
  } on NoSuchMethodError {
    print("sorry");
  } catch (e){
    print("${e.toString()}");
  } finally {
    print("complete");
  }
}
