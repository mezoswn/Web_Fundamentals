function addseven(arr){
    var newarr = [];
    for(var i=0 ; i<arr.length ; i++){
      newarr.push(arr[i]+7);
    }
    return newarr;
  }
  
  var x = [1,2,3,4,5];
  console.log(addseven(x));