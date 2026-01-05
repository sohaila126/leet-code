import 'package:leetcode/leetcode.dart' as leetcode;

void main() {
  print("palindrome question");
  void checkPalindrome(int x) {

    List<String> digits = x.toString().split('');

    List<String> reversedDigits = digits.reversed.toList();


    int reversedNum = int.parse(reversedDigits.join(''));

    if (x == reversedNum) {
      print("$x is a palindrome");
    } else {
      print("$x is not a palindrome");
    }





  }
  checkPalindrome(121);
  checkPalindrome(1421);
print("==================================================");
  print("merge two sorted lists");
  void merge(List<int> l1,List<int> l2){
    List <int> l3 = l1+l2;
   l3.sort();
   print(l3);


  }
  merge([1,2,3,5,],[5,7,54,1,2]);

  print("========================");
  print("roman to int");
  void roman(String s){
    int I=1;
    int V=5;
    int X=10;
    int L=50;
    int C=100;
    int D=500;
    int M=1000;
    int total=0;

    for (int i = 0; i < s.length; i++) {
      int current = 0;

      // Get the value of the current Roman numeral
      if (s[i] == 'I') current = I;
      else if (s[i] == 'V') current = V;
      else if (s[i] == 'X') current = X;
      else if (s[i] == 'L') current = L;
      else if (s[i] == 'C') current = C;
      else if (s[i] == 'D') current = D;
      else if (s[i] == 'M') current = M;


      int next = 0;
      if (i + 1 < s.length) {
        if (s[i + 1] == 'I') next = I;
        else if (s[i + 1] == 'V') next = V;
        else if (s[i + 1] == 'X') next = X;
        else if (s[i + 1] == 'L') next = L;
        else if (s[i + 1] == 'C') next = C;
        else if (s[i + 1] == 'D') next = D;
        else if (s[i + 1] == 'M') next = M;
      }

      if (current < next) {
        total -= current;
      } else {
        total += current;
      }
    }

    print(total);

  }
  roman("III");
  roman("MCMXCIV");
  roman("LVIII");
 print("=================");
 print("two sum");
 void sum(List<int> l,int target){
   for(int i=0 ;i<l.length;i++){
     for(int j=0;j<l.length;j++){
       if (i == j) continue;
       if(l[i]+l[j]==target){
         print("[$i,$j]");
         return;
       }
     }
   }
 }
 sum([2,7,11,15],9);
  sum([3,2,4],6);
 print("============================");
 print("remove_duplicates");
  void remove(List<int> x){
    Set<int> uniqueNumbers = x.toSet();
    print(uniqueNumbers.length);
    print(uniqueNumbers.toList());

  }
  remove([0,0,1,1,1,2,2,3,3,4]);
}