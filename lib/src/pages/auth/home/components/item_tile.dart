import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/models/item_model.dart';


class ItemTile extends StatelessWidget {
   ItemTile({
    super.key,
    required this.item,
  });

  ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
            12), //espaçamento da imagem dentro do quadrado branco
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Imagem
            Expanded(
              child: Image.asset(item.imgUrl),
            ),
            //Nome
            Text(
              item.itemName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            //Preço-Unidade
            Row(
              children: [
                Text(
                  item.price.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: CustomColors.customSwatchColor,
                  ),
                ),
                Text('/${item.unit}',style: TextStyle(color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
                fontSize:12,
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
