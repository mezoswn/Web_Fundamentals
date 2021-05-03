function Double(arr){
    for (var i=0;i<arr.length;i++){
      arr[i] = arr[i]*2;
    }
    return arr;
  }
  
  var x = [1,2,3];
  console.log(Double(x));