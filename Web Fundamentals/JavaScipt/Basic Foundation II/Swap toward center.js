var x = [true,42,"Ada",2,"pizza"];
var y = [1,2,3,4,5,6];
function swap2wardcenter(arr){
  var temp = arr[0]; 
  arr[0] = arr[arr.length-1];
  arr[arr.length-1] = temp;
  var temp2 = arr[2];
  arr[2] = arr[arr.length-3];
  arr[arr.length-3] = temp2;
  return arr;
}
console.log(swap2wardcenter(x));
console.log(swap2wardcenter(y));