function LowHigh(arr){
    var lowest = arr[0];
    var highest = arr[0];
    for (var i=0;i<arr.length;i++){
      if (arr[i] < lowest){
        lowest = arr[i];
      }
      if (arr[i] > highest){
        highest = arr[i]
      }
    }
    console.log(lowest);
    return highest;
  }
  
  var x = [0,5,2,-3,9];
  console.log(LowHigh(x));