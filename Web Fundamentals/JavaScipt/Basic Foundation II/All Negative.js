function allneg(arr){
  var newArr = [];
  for (var i=0;i<arr.length;i++){
  if (arr[i] > 0 ){
  arr[i]=arr[i]-arr[i]-arr[i];
    }
    else ;
    newArr.push((arr[i]));
    }
  return newArr;
}

var x = [2,1,-3,5,8,-9,0,4];
console.log(allneg(x));