import 'dart:io';

void imprimeMenu(){

  while(true){
      print('\n====== Menu ======');
      print('1 - Ver ofertas de Produtos');
      print('2 - Ver ofertas de Serviços');
      print('3 - Ver ofertas de Roupas');
      print('4 - Ver novos Serviços');
      print('5 - Promoção I 10% de desconto');
      print('6 - Promoção II 20% de desconto');
      print('10 - Sair');

      print('\nQual opção deseja?');
      var opcao = stdin.readLineSync() as String;

      if(opcao == '1'){
        print('Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00.');
      }
      else if(opcao == '2'){
        print('Banho e tosa na promoção pelo preço do banho R\$ 54,00.');
      }
      else if(opcao == '3'){
        print('Roupas em oferta - Capa de chuva R\$59,99.');
      }
      else if(opcao == '4'){
        print('Novos serviços oferecidos:\nHidratação de pelo R\$ 39,99 | Tosa higienica por R\$ 10,99 | Tingimento dos pelo por R\$ 55,99.');
      }
        else if(opcao == '5'){
        print('Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho.');
      }
      else if(opcao == '6'){
        print('Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total.');
      }
      else if(opcao == '10'){
        print('Obrigado(a) e volte sempre!\n');
        break;
      }
      else{
        print('Opção inválida. Por favor, escolha uma opção do menu.');
      }
  }
}

void main() {

int qtdUsuarios = 0;
String ehContinuar = 'sim';

while(ehContinuar == 'sim') {

print('Tipo de usuário? [Cliente/Funcionario]');
var usuario = stdin.readLineSync() as String;

  if(usuario == 'funcionario' || usuario == 'Funcionario') {
    print('Olá funcionário!\nDigite o código de acesso:');
    var codigoAcesso = stdin.readLineSync() as String;
    qtdUsuarios++;

    if(codigoAcesso == 'cuidapetrestrito'){

        print('\n=== Módulo Abertura de OS ===');
        print('O cliente comprou ração Ração Royal Canin Indor 7,5kg? Digite S ou N.');
        var resposta1 = stdin.readLineSync() as String;

        double preco1 = 280.00;
        double precoTotal=0;

        if(resposta1 == 'S'){
            precoTotal += preco1;
        }

        print('O cliente solicitou banho e tosa? Digite S ou N.');
        var resposta2 = stdin.readLineSync() as String;
        double preco2 = 54.00;

        if(resposta2 == 'S'){
            precoTotal += preco2;
        }
        
        print('O cliente solicitou tosa higienica? Digite S ou N');
        var resposta3 = stdin.readLineSync() as String;
        double preco3 = 10.99;

        if(resposta3 == 'S'){
            precoTotal += preco3;
        }

        print('O cliente solicitou hidratação? Digite S ou N.');
        var resposta4 = stdin.readLineSync() as String;
        double preco4 = 39.99;
        
          if(resposta4 == 'S'){
            precoTotal += preco4;
          }
          else if(resposta1=='S' && resposta2 == 'S'){
            precoTotal = precoTotal + preco1 + preco2;
          }
          else if(resposta1=='S' && resposta2 == 'S' && resposta3 == 'S'){
            precoTotal = precoTotal + preco1 + preco2 + preco3;
          }
          else if(resposta1=='S' && resposta2 == 'S' && resposta3== 'S'  && resposta4== 'S'){
            precoTotal = precoTotal + preco1 + preco2 + preco3 + preco4;
          }

          String precoFormatado = precoTotal.toStringAsFixed(2);
          print('Encerrando Módulo Abertura de OS...');
          print('Preço final: $precoFormatado\n');
      }

      else{
        imprimeMenu();
      }
    }

    else if(usuario == 'Cliente' || usuario == 'cliente'){

      print('Olá cliente. Qual seu nome?');
      var nomeCliente = stdin.readLineSync() as String;
      qtdUsuarios++;

      print('Prezado(a), $nomeCliente. Seja muito bem-vindo(a) à nossa loja.');
      print(
          'Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');

      imprimeMenu();
      }

      else{
        print('Opção inválida. Tipo de usuário inexistente.\n');
      }

      print('Deseja continuar?');
      ehContinuar = stdin.readLineSync() as String;
  }

 print('Quantidade de usuários que acessaram o Sistema CuidaPet: $qtdUsuarios');
}
