import kotlin.random.Random
import java.util.Arrays

fun bubbleSort(array: IntArray): IntArray{
    var swap = true
    while (swap) {
        swap = false
        for (i in 0 until array.size - 1) {
            if (array[i] > array[i + 1]) {
                val temp = array[i]
                array[i] = array[i + 1]
                array[i + 1] = temp

                swap = true
            }
        }
    }
    return array
}

fun main() {
    val array = IntArray(5) { (1..100).random() }
    println("Unsorted array: " + Arrays.toString(array))
    bubbleSort(array)
    println("Sorted array: " + Arrays.toString(array))
}