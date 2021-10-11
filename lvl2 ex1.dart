import 'dart:io';
import 'dart:math';

void main() {
  int x1 = int.parse(stdin.readLineSync()!);
  int x2 = int.parse(stdin.readLineSync()!);
  int x3 = int.parse(stdin.readLineSync()!);
  int y1 = int.parse(stdin.readLineSync()!);
  int y2 = int.parse(stdin.readLineSync()!);
  int y3 = int.parse(stdin.readLineSync()!);
  print (segmentLenght(x1,x2,y1,y2));
  print (trianglePerimetr(x1, x2, x3, y1, y2, y3));
}

double segmentLenght (int x1, x2, y1, y2){
  double ans = (sqrt(((x2-x1)*(x2-x1)) + ((y2-y1)*(y2-y1))));
  return (ans);
}

double trianglePerimetr (int x1, x2, x3, y1, y2, y3){
  double a = 0, b = 0, c = 0, ans = 0, p = 0;
  a = segmentLenght(x1, x2, y1, y2);
  b = segmentLenght(x2, x3, y2, y3);
  c = segmentLenght(x3, x1, y3, y1);
  p = (a+b+c) / 2;
  ans = sqrt(p* sqrt(p-a) * sqrt(p-b) * sqrt(p-c));
  return (ans);
}