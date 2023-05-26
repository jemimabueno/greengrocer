import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/services/utils_services.dart';

class ProductScreen extends StatelessWidget {
   ProductScreen({
    super.key,
    required this.item,
  });

  final ItemModel item;
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(item.imgUrl),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(32), // encaminhar o texto pro meio
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Nome- quantidade
                    Row(
                      children: [
                        Text(
                          item.itemName * 10,
                          maxLines: 2,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          color: Colors.red,
                        )
                      ],
                    ),
                    //Preço
                    Text(utilsServices.priceToCurrency(item.price),
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.customSwatchColor,
                    ),
                    ),
                    //Descrição
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:10),
                        child: SingleChildScrollView(
                          child: Text(item.description, style: const TextStyle(
                            height: 1.5,
                          ),
                          ),
                        ),
                      ),
                    ),
                    //Botão adicionar carrinho
                    SizedBox(
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: (){}, child: Text('botão'),// expanded fez o botão ir la pra baixo
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
