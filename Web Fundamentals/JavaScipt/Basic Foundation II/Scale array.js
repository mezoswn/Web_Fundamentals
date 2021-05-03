function scalearray(arr,num){
    for (var i=0;i<arr.length;i++){
      arr[i] = arr[i]*num;
    }
    return arr;
  }
  
  var array = [5,2,3];
  var number = 3;
  console.log(scalearray(array,number));