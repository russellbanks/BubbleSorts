function bubblesort!(arr::AbstractVector)
    for _ in 2:length(arr), j in 1:length(arr)-1
        if arr[j] > arr[j+1]
            arr[j], arr[j+1] = arr[j+1], arr[j]
        end
    end
    return arr
end
 
array = rand(1:100, 5)
println("Unsorted array: $array\nSorted array: ", bubblesort!(array))