function fib(n) {
  
  var a = 0, b = 1, sum = 1;
  
  for(var i = 2; i <= n; i++) {
      sum = a + b;
      a = b;
      b = sum;
  }
  
  return sum;
}
console.log(fib(6))
console.log(fib(7))