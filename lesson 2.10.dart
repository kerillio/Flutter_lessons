class Product {
  int id;
  String type;
  String name;
  double cost;
  int value;

  Product(this.id, this.type, this.name, this.cost, this.value);

  String fullInfo() {
    return '$id $type $name $cost рублей  $value шт';
  }
}

abstract class Filter {
  bool apply(Product prod);
}

class Type implements Filter {
  String filter;

  Type(this.filter);

  @override
  bool apply(Product prod) {
    return prod.type == filter;
  }
}

class Cost implements Filter {
  double filter;

  Cost(this.filter);

  @override
  bool apply(Product prod) {
    return prod.cost = filter;
  }
}

class Value implements Filter {
  int filter;

  Value(this.filter);

  @override
  bool apply(Product prod) {
    return prod.value  filter;
  }
}

void main() {
 
  final articles = '''
1,хлеб,Бородинский,500,5
2,хлеб,Белый,200,15
3,молоко,Полосатый кот,50,53
4,молоко,Коровка,50,53
5,вода,Апельсин,25,100
6,вода,Бородинский,500,5''';

    
    
  Filter filter = Value(50);
  
  applyFilter(articles, filter);
}

void applyFilter(String list, Filter filter) {
  for (String str in list.split(n)) {
    print(str.split(','));
    
    var strSplit = str.split(',');
    Product prod = Product(
      int.parse(strSplit[0]),
      strSplit[1],
      strSplit[2],
      double.parse(strSplit[3]),
      int.parse(strSplit[4]),
    );
    
    
    if (filter.apply(prod)){
      print(prod.fullInfo());
      }
    
  }
}
