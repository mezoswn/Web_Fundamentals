function alwayshungry(arr){
    var sum = 0;
    for (var i=0;i<arr.length;i++){
      if (arr[i] == "food"){
        console.log("yummy");
      }
      else{
        sum++;
      }
    }
    if(sum == arr.length){
      console.log("I'm hungry");
    }
  }
  
  var x = [9,29,83,8,4,1];
  var y = [4, "food", 1, "food"];
  alwayshungry(x);
  alwayshungry(y);