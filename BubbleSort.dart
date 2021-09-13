import 'dart:math';

List<int> bubbleSort(List<int> list) {
  var retList = new List<int>.from(list);
  var tmp;
  var swapped = false;
  do {
    swapped = false;
    for (var i = 1; i < retList.length; i++) {
      if (retList[i - 1] > retList[i]) {
        tmp = retList[i - 1];
        retList[i - 1] = retList[i];
        retList[i] = tmp;
        swapped = true;
      }
    }
  } while (swapped);

  return retList;
}

void main() {
  final random = new Random();
  final min = 1;
  final max = 100;
  List<int> array = [];
  for (int i = 0; i < 5; i++) {
    array.add(min + random.nextInt(max - min));
  }
  print("Unsorted array: $array");
  List<int> sortedarray = bubbleSort(array);
  print("Sorted array: $sortedarray");
}