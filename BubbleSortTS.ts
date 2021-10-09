function bubbleSort(array: number[]): number[] {
    for(var i = 0; i < array.length; i++){
        
      for(var j = 0; j < ( array.length - i -1 ); j++){
          
        if(array[j] > array[j+1]){
            
          var temp: number = array[j]
          array[j] = array[j + 1]
          array[j+1] = temp
        }
      }
    }

    return array
   }

   var unsortedArray: number[] = Array.from({length: 5}, () => Math.floor(Math.random() * 100))

   console.log("Unsorted array:", unsortedArray)
   console.log("Sorted array:", bubbleSort(unsortedArray))