function printBig(arr){
    for (var i=0;i<arr.length;i++){
      if(arr[i] > 0){
        arr[i] = 'big';
      }
    }
    return arr;
  }
  
  var x = [-1,3,5,-5];
  console.log(printBig(x));