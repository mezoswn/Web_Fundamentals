function nth2last(arr,n){
    if(arr.length<n){
      return null;
    } else {
    return arr[arr.length-n];
    }
  }
  console.log(nth2last ([5,2],3))
  console.log(nth2last ([5,2,3,6,4,9,7],3));