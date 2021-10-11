import 'dart:io';

void main() {
  double x = double.parse(stdin.readLineSync()!);
  int n = int.parse(stdin.readLineSync()!);
  BinFraction(x, n);
}

void BinFraction (double x, int n){
  List<int> s = [];
  while (n != 0){
    x = x*2;
    if (x > 1){
      s.add(1);
      x = x - 1;
    }
    else {
      s.add(0);
    }
    n--;
  }
  print (s);
}