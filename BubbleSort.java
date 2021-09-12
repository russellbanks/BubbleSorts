import java.util.Arrays;  
import java.util.Random;

class BubbleSort
{
    void bubbleSort(int arr[])
    {
        int n = arr.length;
        for (int i = 0; i < n-1; i++)
            for (int j = 0; j < n-i-1; j++)
                if (arr[j] > arr[j+1])
                {
                    int temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                }
    }
 
    public static void main(String args[])
    {
        BubbleSort ob = new BubbleSort();
        int array[] = new int[5];
        for (int i = 0; i < array.length; i++) {
            array[i] = new Random().nextInt(100);
         }
        System.out.println(String.format("Unsorted array: %s", Arrays.toString(array)));

        ob.bubbleSort(array);
        System.out.println(String.format("Sorted array: %s", Arrays.toString(array)));
    }
}