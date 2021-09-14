using System;

class BubbleSorts
{
   static void bubbleSort(int []array)
   {
      int n = array.Length;
      for (int i = 0; i < n - 1; i++)
      {
         for(int j = 0; j < n - i - 1; j++)
         {
            if (array[j] > array[j + 1])
            {
               int temp = array[j];
               array[j] = array[j + 1];
               array[j + 1] = temp;
            }
         }
      }
   }

   static void fillRandom(int []array)
   {
      Random randNum = new Random();
      for (int i = 0; i < array.Length; i++)
      {
         array[i] = randNum.Next(0, 100);
      }
   }

   static void printArray(int []array)
   {
      for (int i = 0; i < array.Length; ++i)
      {
         Console.Write(array[i] + " ");
      }
   }

   public static void Main()
   {
      int[] array = new int[5];
      fillRandom(array);
      Console.Write("Unsorted array: ");
      printArray(array);
      Console.WriteLine();
      bubbleSort(array);
      Console.Write("Sorted array: ");
      printArray(array);
   }

}