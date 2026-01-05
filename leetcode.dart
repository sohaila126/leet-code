import 'package:leetcode/leetcode.dart' as leetcode;


class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;

    List<String> digits = x.toString().split('');
    List<String> reversedDigits = digits.reversed.toList();
    int reversedNum = int.parse(reversedDigits.join(''));

    return x == reversedNum;
  }
}


  print("merge two sorted lists");
  void merge(List<int> l1,List<int> l2){
    List <int> l3 = l1+l2;
   l3.sort();
   print(l3);


  }
print("merge two sorted lists");

  void mergeSortedLists(List<int> firstList, List<int> secondList) {
    List<int> mergedList = firstList + secondList;
    mergedList.sort();
    print(mergedList);
  }

  mergeSortedLists([1, 2, 3, 5], [5, 7, 54, 1, 2]);

  print("========================");
  print("roman to int");

  void convertRomanToInt(String romanNumeral) {
    int I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000;
    int totalValue = 0;

    for (int i = 0; i < romanNumeral.length; i++) {
      int currentValue = 0;

      if (romanNumeral[i] == 'I') currentValue = I;
      else if (romanNumeral[i] == 'V') currentValue = V;
      else if (romanNumeral[i] == 'X') currentValue = X;
      else if (romanNumeral[i] == 'L') currentValue = L;
      else if (romanNumeral[i] == 'C') currentValue = C;
      else if (romanNumeral[i] == 'D') currentValue = D;
      else if (romanNumeral[i] == 'M') currentValue = M;

      int nextValue = 0;
      if (i + 1 < romanNumeral.length) {
        if (romanNumeral[i + 1] == 'I') nextValue = I;
        else if (romanNumeral[i + 1] == 'V') nextValue = V;
        else if (romanNumeral[i + 1] == 'X') nextValue = X;
        else if (romanNumeral[i + 1] == 'L') nextValue = L;
        else if (romanNumeral[i + 1] == 'C') nextValue = C;
        else if (romanNumeral[i + 1] == 'D') nextValue = D;
        else if (romanNumeral[i + 1] == 'M') nextValue = M;
      }

      if (currentValue < nextValue) {
        totalValue -= currentValue;
      } else {
        totalValue += currentValue;
      }
    }

    print(totalValue);
  }

  convertRomanToInt("III");
  convertRomanToInt("MCMXCIV");
  convertRomanToInt("LVIII");

  print("=================");
  print("two sum");

  void findTwoSumIndices(List<int> numbers, int targetSum) {
    for (int i = 0; i < numbers.length; i++) {
      for (int j = 0; j < numbers.length; j++) {
        if (i == j) continue;

        if (numbers[i] + numbers[j] == targetSum) {
          print("[$i,$j]");
          return;
        }
      }
    }
  }

  findTwoSumIndices([2, 7, 11, 15], 9);
  findTwoSumIndices([3, 2, 4], 6);

  print("============================");
  print("remove_duplicates");

  void removeDuplicatesFromList(List<int> numbers) {
    Set<int> uniqueNumbers = numbers.toSet();
    print(uniqueNumbers.length);
    print(uniqueNumbers.toList());
  }

  removeDuplicatesFromList([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]);
}
 
