import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print (SumOfDigits(n));
}

int SumOfDigits(int n){
  int x = 0, sum = 0;
  while (n > 0){
    x = n % 10;
    n = n ~/ 10;
    sum = sum + x;
  }
  return sum;
}