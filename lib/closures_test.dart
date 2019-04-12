Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

main() {
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  print(add2);
  print(add4);
  print(add2(5));
  print(add4(3));

//  assert(add2(3) == 5);
//  assert(add4(3) == 7);
}