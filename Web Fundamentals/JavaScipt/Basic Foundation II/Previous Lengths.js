function previouslengths(arr){

    /* for (var i = 1; i< x.length; i++){
x[i]=x[i-1].length; */

    for (var i=arr.length-1;i>0;i--){
        arr[i] = arr[i-1].length;
    }
    return arr;
  }
  
  var x = ["hello","dojo","awesome"];
  console.log(previouslengths(x));

















