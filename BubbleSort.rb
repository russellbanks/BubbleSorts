def bubble_sort(array)
    array_length = array.size
    return array if array_length <= 1
  
    loop do
      swapped = false
  
      (array_length-1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
        end
      end
  
      break if not swapped
    end
  
    array
  end
  
  unsorted_array = Array.new(5) { rand(1...100) }
  p ("Unsorted array: #{unsorted_array}")
  p ("Sorted array: #{bubble_sort(unsorted_array)}")