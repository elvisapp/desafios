import 'dart:convert';

void main() {
  String dadosJson = '''
  [
    {"dia": 1, "valor": 1000},
    {"dia": 2, "valor": 2000},
    {"dia": 3, "valor": 3000},
    {"dia": 4, "valor": 0},
    {"dia": 5, "valor": 4000},
    {"dia": 6, "valor": 5000},
    {"dia": 7, "valor": 0}
  ]
  ''';

  List<dynamic> dados = jsonDecode(dadosJson);

  double menorFaturamento = double.infinity;
  double maiorFaturamento = double.negativeInfinity;
  double somaFaturamento = 0;
  int diasComFaturamento = 0;

  for (var dia in dados) {
    double valor = dia['valor'];
    if (valor > 0) {
      somaFaturamento += valor;
      diasComFaturamento++;
      if (valor < menorFaturamento) {
        menorFaturamento = valor;
      }
      if (valor > maiorFaturamento) {
        maiorFaturamento = valor;
      }
    }
  }

  double mediaFaturamento = somaFaturamento / diasComFaturamento;

  int diasAcimaMedia =
      dados.where((dia) => dia['valor'] > mediaFaturamento).length;

  print('Menor faturamento: \$${menorFaturamento}');
  print('Maior faturamento: \$${maiorFaturamento}');
  print('Dias acima da média: $diasAcimaMedia');
}
