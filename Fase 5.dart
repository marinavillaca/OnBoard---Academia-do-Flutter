import 'dart:io';

void main() {
  print('Olá, cliente. Qual seu nome?');
  var nomeCliente = stdin.readLineSync() as String;

  print('\nPrezado(a), $nomeCliente. Seja muito bem-vindo(a) à nossa loja.');
  print('Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');

  print('\n=== Menu ===');
  print('1- Ver ofertas de Produtos');
  print('2- Ver ofertas de Serviços');
  print('3- Ver ofertas de Produtos');
  print('4- Ver ofertas de Serviços');

  print('\nQual opção deseja?');
  var opcao = stdin.readLineSync() as String;

  if(opcao =='1'){
    print('Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00');
  }
  if(opcao =='2'){
    print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
  }
  if(opcao =='3'){
    print('Roupas em oferta - Capa de chuva R\$59,99');
  }
  if(opcao =='4'){
    print('Hidratação de pelo R\$39,99 | Tosa higienica por R\$10,99 | Tingimento dos pelo por R\$ 55,99');
  }

}
