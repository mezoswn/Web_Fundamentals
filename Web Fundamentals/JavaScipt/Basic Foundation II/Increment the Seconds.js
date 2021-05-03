function incrSeconds(arr){
  for (var i=0;i<arr.length;i++){
    if(i % 2 !==0){
      arr[i] = arr[i] + 1; 
    }
   console.log(arr[i]); 
  }
  return arr;
}

var x = [0,4,8,6,-1,2,-9];
console.log(incSeconds(x));