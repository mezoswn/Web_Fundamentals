function seclarge(arr){
    var max = arr[0];
    var sec = arr[0];
        for(var i=0;i<arr.length;i++){
          if(arr.length<2){
            return null;
          }
            else if(arr[i]>max){
                sec= max;
              max = arr[i];
            }
          else if(arr[i]>sec && arr[i] < max)
            sec = arr[i];
        }
      return sec;
      
    }
    console.log(seclarge([3,6,8,11,10]));
    console.log(seclarge([40,1,4, 3.14 ,7]));
    console.log(seclarge([1]));
    console.log(seclarge([]));