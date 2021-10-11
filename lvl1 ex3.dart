import 'dart:io';

void main() {
  String s = "koo";
  for (int i = 0; i < s.length-1; i++){
    for (int j = i+1; j < s.length; j++){
      if (s[i] == s[j]){
        print(s[i]);
        break;
      }
    }
  }
}