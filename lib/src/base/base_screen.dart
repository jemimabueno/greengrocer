import 'package:flutter/material.dart';
import 'package:greengrocer/src/home/home_tab.dart';

class BaseScreen extends StatefulWidget {
 const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

  class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0; // Inicializando com 0, por que quero que o botão 'home' inicie selecionado. Se eu mudar o número, iniciará outros botões conforme a sequência.
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          physics:const NeverScrollableScrollPhysics(),//trava a tela, para não passar para o lado
          controller: pageController, // mudar a tela de acordo com o 'ícone' selecionado.
          children: [
            const HomeTab(),
            Container(color: Colors.red),
            Container(color: Colors.blue),
            Container(color: Colors.pink),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
               // currentIndex controla os botões embaixo, pra isso, foi criado uma variável, que foi inserida aí dentro
              //necessita mudar o estado, pra isso foi mudado o 'Stateless' para 'Stateful'. Função ONTAP
              pageController.jumpToPage(index); // controlar a página, quando selecionar um ícone ele mudar junto com a página (definida no pagecontroller(variável))
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withAlpha(100),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Carrinho',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Pedidos',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: 'Perfil')
          ],
        ));
  }
}
