function prReturn(arr){
    console.log(arr[arr.length-2]);
    for (var i=0;i<arr.length;i++){
      if(arr[i] % 2 !==0){
        return arr[i];
      }
    }
  }
  
  var x = [6,2,3,0,5,94];
  console.log(prReturn(x));