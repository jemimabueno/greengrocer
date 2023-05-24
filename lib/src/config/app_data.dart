import 'package:greengrocer/src/models/item_model.dart';

ItemModel apple = ItemModel(
  description: 'A melhor maçã da região',
  imgUrl: 'assets\fruits\apple.png',
  itemName: 'Maçã',
  price: 5.5,
  unit: 'kg',
);

ItemModel grape = ItemModel(
  description: 'A melhor uva da região',
  imgUrl: 'assets\fruits\grape.png',
  itemName: 'Uva',
  price: 7.4,
  unit: 'kg',
);

ItemModel guava = ItemModel(
  description: 'A melhor goiaba da região',
  imgUrl: 'assets\fruits\guava.png',
  itemName: 'Goiaba',
  price: 11.5,
  unit: 'kg',
);

ItemModel kiwi = ItemModel(
  description: 'O melhor kiwi da região',
  imgUrl: 'assets\fruits\guava.png',
  itemName: 'Kiwi',
  price: 2.5,
  unit: 'un',
);

ItemModel mango = ItemModel(
  description: 'A melhor manga da região',
  imgUrl: 'assets\fruits\mango.png',
  itemName: 'Manga',
  price: 5.5,
  unit: 'kg',
);

ItemModel papaya = ItemModel(
  description: 'O melhor mamão da região',
  imgUrl: 'assets\fruits\papaya.png',
  itemName: 'Mamão papaya',
  price: 8,
  unit: 'kg',
);

List<ItemModel> items = [apple, grape, guava, kiwi, mango, papaya];
List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais',
];