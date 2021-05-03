function s2last (arr){
    if (arr.length<2){
      return null;
    } else{
    return arr[arr.length-2];
    }
  }
  console.log(s2last([42, true, 4, "Liam", 7]));
  console.log(s2last ([3]));