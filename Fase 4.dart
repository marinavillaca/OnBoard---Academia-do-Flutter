import 'dart:io';

void main() {
  print('Olá, cliente. Qual seu nome?');
  var nomeCliente = stdin.readLineSync() as String;

  print('\nPrezado(a), $nomeCliente. Seja muito bem-vindo(a) à nossa loja.');
  print('Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');

  print('\n=== Menu ===');
  print('1- Ver ofertas de Produtos');
  print('2- Ver ofertas de Serviços');

  print('\nQual opção deseja?');
  var opcao = stdin.readLineSync() as String;

  if(opcao =='1'){
    print('Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00');
  }
  if(opcao =='2'){
    print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
  }
}
