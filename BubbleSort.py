import random

def bubbleSort(array):
    n = len(array)
  
    for i in range(n-1):
  
        for j in range(0, n-i-1):
  
            if array[j] > array[j + 1] :
                array[j], array[j + 1] = array[j + 1], array[j]

    return array
  
unsortedArray = [random.randint(1,100) for _ in range(5)]
  
print ("Unsorted array:", unsortedArray)
print("Sorted array:", bubbleSort(unsortedArray))