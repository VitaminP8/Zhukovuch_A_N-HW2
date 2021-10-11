import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print (SumOfDigits(n));
}

int SumOfDigits (int n){
  int x = 0, sum = 0, ans = 0, m = 0;
  for (int i = 0; i < n; i++){
    m = i;
    while (m > 0){
      x = m % 10;
      m = m ~/ 10;
      sum = sum + x;
    }
    if (sum % 13 == 0){
      ans++;
    }
    x = 0;
    sum = 0;
  }
  return ans;
}
