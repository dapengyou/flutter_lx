main() {
  //级联调用
  new method()
    ..name = "Tom"
    ..age = 12
    ..result();

  print("-------------for循环----------");
  useFor();
  print("-------------闭包循环----------");
  useClosure();
}

useFor() {
  var message = new StringBuffer("Dart is fun");
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);
}

class method {
  var name, age;

  result() {
    print("name is $name,and age is $age");
  }
}

useClosure() {
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());

  print(callbacks);
}
