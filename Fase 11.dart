import 'dart:io';

void menu0() {
  while (true) {
    print('\n======== Menu ========');
    print('Opção 1 - Ver promoções.');
    print('Opção 2 - Solicitar serviço.');
    print('Opção 3 - Listar carrinho de compra.');
    print('Opção 4 - Finalizar carrinho de compra.');
    print('Opção 0 - Sair.');
    print('\nQual opção deseja?');
    var opcao = stdin.readLineSync() as String;

    if (opcao == '1') {
      menu1();
    } else if (opcao == '2') {
      menu2();
    } else if (opcao == '3') {
      menu3();
    } else if (opcao == '4') {
      print('Finalizando carrinho de compra...');
      print('Preço total: $precoTotal');
      print('Tipo de pagamento? [Dinheiro/Cartão]');
      var pagamento = stdin.readLineSync() as String;

      if (pagamento == 'dinheiro') {
        double precoDesconto = 0.90 * precoTotal;
        String descontoFormatado = precoDesconto.toStringAsFixed(2);
        print('Preço com desconto: $descontoFormatado');
      }
    } else if (opcao == '0') {
      print('Finalizando...');
      break;
    } else {
      print('Opção inválida. Por favor, escolha uma opção do menu.');
    }
  }
}

List<String> carrinhoNomePromo = [];
List<double> carrinhoPrecoPromo = [];

List<String> carrinhoNomeServicos = [];
List<double> carrinhoPrecoServicos = [];
double precoTotal = 0;
bool promoAtivo = false;
var count = 0;

void menu1() {
  while (true) {
    print('\n======== Promoções ========');
    print(
        'Código 101 - Ração Royal Canin Indoor Para Cães Adultos De Porte Mini De Ambientes Internos 7,5kg na promoção pelo preço de R\$ 290,00.');
    print(
        'Código 102 - Ração Royal Canin Sterilised para Gatos Adultos Castrados e com o valor promocional de R\$ 492,00.');
    print(
        'Código 103 - Bifinho Keldog para Cães Porte Pequeno Sabor Carne e Cereais por R\$23,92.');
    print(
        'Código 104 - Fraldas Descartáveis Super Secão para Cães Machos com 12 Unidades R\$ 38,61.');
    print('-> OPÇÕES:');
    print('8 - Adicionar ao carrinho de compras.');
    print('0 - Voltar.');

    print('\nQual opção deseja?');
    var opcao1 = stdin.readLineSync() as String;

    if (opcao1 == '8') {
      promoAtivo = true;
      count++;

      if (count <= 3) {
        print('Digite o código que deseja [101 / 102 / 103 / 104]:');
        var codigo = stdin.readLineSync() as String;

        if (codigo == '101') {
          print('Compra de código $codigo feita com sucesso! ');
          carrinhoPrecoPromo.add(290.00);
          carrinhoNomePromo.add('Ração Royal Canin Indoor');
          precoTotal += 290.00;
        } else if (codigo == '102') {
          print('Compra de código $codigo feita com sucesso!');
          carrinhoPrecoPromo.add(492.00);
          carrinhoNomePromo.add('Ração Royal Canin Sterilised');
          precoTotal += 492.00;
        } else if (codigo == '103') {
          print('Compra de código $codigo feita com sucesso!');
          carrinhoPrecoPromo.add(23.92);
          carrinhoNomePromo.add('Bifinho Keldog');
          precoTotal += 23.92;
        } else if (codigo == '104') {
          print('Compra de código $codigo feita com sucesso!');
          carrinhoPrecoPromo.add(38.61);
          carrinhoNomePromo.add('Fraldas Descartáveis Super Secão');
          precoTotal += 38.61;
        } else {
          print('Código inválido. Por favor, escolha uma opção do menu.');
        }
      } else {
        print('Carrinho de compras cheio!');
      }
    } else if (opcao1 == '0') {
      break;
    } else {
      print('Opção inválida. Por favor, escolha uma opção do menu.');
    }
  }
}

bool servicosAtivo = false;

void menu2() {
  while (true) {
    print('\n======== Serviços ========');
    print('Código 201 - Banho e tosa - R\$ 55,99.');
    print('Código 202 - Tosa higienica - R\$ 12,99.');
    print('Código 203 - Hidratação dos pelos - R\$ 20,99.');
    print('-> OPÇÕES:');
    print('8 - Adicionar ao carrinho de compras.');
    print('0 - Voltar.');
    print('\nQual opção deseja?');

    var opcao2 = stdin.readLineSync() as String;

    if (opcao2 == '8') {
      servicosAtivo = true;
      count++;

      if (count <= 3) {
        print('Digite o código que deseja [201 / 202 / 203]:');
        var codigo = stdin.readLineSync() as String;

        if (codigo == '201') {
          print('Compra de código $codigo adicionada com sucesso!');
          carrinhoPrecoServicos.add(55.99);
          carrinhoNomeServicos.add('Banho e tosa');
          precoTotal += 55.99;
        } else if (codigo == '202') {
          print('Compra de código $codigo adicionada com sucesso!');
          carrinhoPrecoServicos.add(12.99);
          carrinhoNomeServicos.add('Tosa higiênica');
          precoTotal += 12.99;
        } else if (codigo == '203') {
          print('Compra de código $codigo adicionada com sucesso!');
          carrinhoPrecoServicos.add(20.99);
          carrinhoNomeServicos.add('Hidratação dos pelos');
          precoTotal += 20.99;
        } else {
          print('Opção inválida. Por favor, escolha uma opção do menu.');
        }
      } else {
        print('Carrinho de compras cheio!');
      }
    } else if (opcao2 == '0') {
      break;
    }
  }
}

void menu3() {
  if (promoAtivo == true) {
    print('===== Carrinho de compras | Promoções =====');
    for (int i = 0; i < carrinhoNomePromo.length; i++) {
      print(
          'Item #${i + 1} | Produto: ${carrinhoNomePromo[i]} | Preço: ${carrinhoPrecoPromo[i]}');
    }

    if (servicosAtivo == true) {
      print('\n===== Carrinho de compras | Serviços =====');
      for (int i = 0; i < carrinhoNomeServicos.length; i++) {
        print(
            'Item #${i + 1} | Produto: ${carrinhoNomeServicos[i]} | Preço: ${carrinhoPrecoServicos[i]}');
      }
    }
  }
}

void menuFuncionario() {
  print('Qual o nome do cliente?');
  var nomeCliente = stdin.readLineSync() as String;

  while (true) {
    print(
        'Digite os codigos que o cliente comprou [101/102/103/104/201/202/203 - sair 0]:');
    var codigo = stdin.readLineSync() as String;
    if (codigo == '101') {
      print('Compra de código $codigo feita com sucesso! ');
      carrinhoPrecoPromo.add(290.00);
      carrinhoNomePromo.add('Ração Royal Canin Indoor');
      precoTotal += 290.00;
      promoAtivo = true;
    } else if (codigo == '102') {
      print('Compra de código $codigo feita com sucesso!');
      carrinhoPrecoPromo.add(492.00);
      carrinhoNomePromo.add('Ração Royal Canin Sterilised');
      precoTotal += 492.00;
      promoAtivo = true;
    } else if (codigo == '103') {
      print('Compra de código $codigo feita com sucesso!');
      carrinhoPrecoPromo.add(23.92);
      carrinhoNomePromo.add('Bifinho Keldog');
      precoTotal += 23.92;
      promoAtivo = true;
    } else if (codigo == '104') {
      print('Compra de código $codigo feita com sucesso!');
      carrinhoPrecoPromo.add(38.61);
      carrinhoNomePromo.add('Fraldas Descartáveis Super Secão');
      precoTotal += 38.61;
      promoAtivo = true;
    } else if (codigo == '201') {
      print('Compra de código $codigo adicionada com sucesso!');
      carrinhoPrecoServicos.add(55.99);
      carrinhoNomeServicos.add('Banho e tosa');
      precoTotal += 55.99;
      servicosAtivo = true;
    } else if (codigo == '202') {
      print('Compra de código $codigo adicionada com sucesso!');
      carrinhoPrecoServicos.add(12.99);
      carrinhoNomeServicos.add('Tosa higiênica');
      precoTotal += 12.99;
      servicosAtivo = true;
    } else if (codigo == '203') {
      print('Compra de código $codigo adicionada com sucesso!');
      carrinhoPrecoServicos.add(20.99);
      carrinhoNomeServicos.add('Hidratação dos pelos');
      precoTotal += 20.99;
      servicosAtivo = true;
    } else if (codigo == '0') {
      break;
    } else {
      print('Opção inválida. Por favor, escolha uma opção do menu.');
    }
  }
  menu3();
  print('Preço total: $precoTotal');
  print('Tipo de pagamento? [Dinheiro/Cartão]');
  var pagamento = stdin.readLineSync() as String;

  if (pagamento == 'dinheiro') {
    double precoDesconto = 0.90 * precoTotal;
    String descontoFormatado = precoDesconto.toStringAsFixed(2);
    print('Preço com desconto: $descontoFormatado');
  }
  print('Compra do(a) cliente $nomeCliente finalizada!');
}

void main() {
  print('Bem vindo ao autoatendimento do Cuidapet.');
  print('Digite seu nome?');
  var nomeLeitura = stdin.readLineSync() as String;

  if (nomeLeitura == 'cuidapetrestrito') {
    menuFuncionario();
  } else {
    print('Olá, $nomeLeitura. Seja bem-vindo(a)!');
    menu0();
    print('Obrigado! Volte sempre $nomeLeitura!');
  }
}
