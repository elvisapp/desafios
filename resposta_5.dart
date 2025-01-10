void main() {
  String original = "exemplo";
  String invertida = inverterString(original);

  print(invertida);
}

String inverterString(String s) {
  String invertida = "";
  for (int i = s.length - 1; i >= 0; i--) {
    invertida += s[i];
  }
  return invertida;
}
