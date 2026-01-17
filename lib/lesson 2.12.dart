class RawProductItem {
  String name = '';
  String categoryName = '';
  String subcategoryName = '';
  DateTime expirationDate;
  int qty = 0;

  RawProductItem({
    required this.name,
    required this.categoryName,
    required this.subcategoryName,
    required this.expirationDate,
    required this.qty,
  });
}

void main() {
  final productList = [
    RawProductItem(
      name: 'Персик',
      categoryName: 'Растительная пища',
      subcategoryName: 'Фрукты',
      expirationDate: DateTime(2026, 12, 22),
      qty: 5,
    ),
    RawProductItem(
      name: 'Молоко',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Напитки',
      expirationDate: DateTime(2026, 12, 22),
      qty: 5,
    ),
    RawProductItem(
      name: 'Кефир',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Напитки',
      expirationDate: DateTime(2026, 12, 22),
      qty: 5,
    ),
    RawProductItem(
      name: 'Творог',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Не напитки',
      expirationDate: DateTime(2026, 12, 22),
      qty: 0,
    ),
    RawProductItem(
      name: 'Творожок',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Не напитки',
      expirationDate: DateTime(2026, 12, 22),
      qty: 0,
    ),
    RawProductItem(
      name: 'Творог',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Не напитки',
      expirationDate: DateTime(2026, 12, 22),
      qty: 0,
    ),
    RawProductItem(
      name: 'Гауда',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Сыры',
      expirationDate: DateTime(2026, 12, 22),
      qty: 3,
    ),
    RawProductItem(
      name: 'Маасдам',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Сыры',
      expirationDate: DateTime(2026, 12, 22),
      qty: 2,
    ),
    RawProductItem(
      name: 'Яблоко',
      categoryName: 'Растительная пища',
      subcategoryName: 'Фрукты',
      expirationDate: DateTime(2023, 12, 4),
      qty: 4,
    ),
    RawProductItem(
      name: 'Морковь',
      categoryName: 'Растительная пища',
      subcategoryName: 'Овощи',
      expirationDate: DateTime(2026, 12, 23),
      qty: 51,
    ),
    RawProductItem(
      name: 'Черника',
      categoryName: 'Растительная пища',
      subcategoryName: 'Ягоды',
      expirationDate: DateTime(2026, 12, 25),
      qty: 0,
    ),
    RawProductItem(
      name: 'Курица',
      categoryName: 'Мясо',
      subcategoryName: 'Птица',
      expirationDate: DateTime(2026, 12, 18),
      qty: 2,
    ),
    RawProductItem(
      name: 'Говядина',
      categoryName: 'Мясо',
      subcategoryName: 'Не птица',
      expirationDate: DateTime(2026, 12, 17),
      qty: 0,
    ),
    RawProductItem(
      name: 'Телятина',
      categoryName: 'Мясо',
      subcategoryName: 'Не птица',
      expirationDate: DateTime(2026, 12, 17),
      qty: 0,
    ),
    RawProductItem(
      name: 'Индюшатина',
      categoryName: 'Мясо',
      subcategoryName: 'Птица',
      expirationDate: DateTime(2026, 12, 17),
      qty: 1,
    ),
    RawProductItem(
      name: 'Утка',
      categoryName: 'Мясо',
      subcategoryName: 'Птица',
      expirationDate: DateTime(2026, 12, 18),
      qty: 1,
    ),
    RawProductItem(
      name: 'Гречка',
      categoryName: 'Растительная пища',
      subcategoryName: 'Крупы',
      expirationDate: DateTime(2023, 12, 22),
      qty: 8,
    ),
    RawProductItem(
      name: 'Свинина',
      categoryName: 'Мясо',
      subcategoryName: 'Не птица',
      expirationDate: DateTime(2026, 12, 23),
      qty: 5,
    ),
    RawProductItem(
      name: 'Груша',
      categoryName: 'Растительная пища',
      subcategoryName: 'Фрукты',
      expirationDate: DateTime(2026, 12, 25),
      qty: 5,
    ),
  ];

  var productMap = <String, dynamic>{};

  for (var item in productList) {
    if (!productMap.keys.contains(item.categoryName)) {
      //print('new category name: ${item.categoryName}');
      productMap[item.categoryName] = <String, dynamic>{};
    }
    var catMap = productMap[item.categoryName];
    if (!catMap.keys.contains(item.subcategoryName)) {
      //print('in ${item.categoryName} added new subcategory: ${item.subcategoryName}');
      catMap[item.subcategoryName] = <String>[];
    }
    int exp = item.expirationDate.compareTo(DateTime.now());
    if(item.qty > 0  && exp > 0) {
      catMap[item.subcategoryName].add(item.name);
    }
  }

  productMap.forEach((key, map) {
    print('$key');
     map.forEach((cat, name) {
      print('   $cat:$name');});
          },
    );
}
