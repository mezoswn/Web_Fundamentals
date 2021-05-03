function factorial(num) {
    var x = 1;
    for (var i = 1; i <= num; i++) {
      x *= i;
    }
   
    return x;
  }
  console.log(factorial(3));
  console.log(factorial(5));