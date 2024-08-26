import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Product {
  final int price;
  final String name;
  final int popurality;
  Product({
    required this.price,
    required this.name,
    required this.popurality,
  });

  Product copyWith({
    int? price,
    String? name,
    int? popurality,
  }) {
    return Product(
      price: price ?? this.price,
      name: name ?? this.name,
      popurality: popurality ?? this.popurality,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'price': price,
      'name': name,
      'popurality': popurality,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      price: map['price'] as int,
      name: map['name'] as String,
      popurality: map['popurality'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Product(price: $price, name: $name, popurality: $popurality)';

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;

    return other.price == price &&
        other.name == name &&
        other.popurality == popurality;
  }

  @override
  int get hashCode => price.hashCode ^ name.hashCode ^ popurality.hashCode;
}

var listProduct = [
  Product(price: 30000, name: "Voucher Game Steam Rp 30.000", popurality: 2),
  Product(price: 99000, name: "Voucher Grab Car Rp 100.000", popurality: 5),
  Product(price: 200000, name: "Voucher Indomaret Rp 200.000", popurality: 8),
  Product(price: 499000, name: "Voucher Indomaret Rp 500.000", popurality: 10),
  Product(price: 10000, name: "Voucher Gojek Gopay Rp 10.000", popurality: 6),
  Product(price: 40000, name: "Voucher Gojek Gopay Rp 50.000", popurality: 10),
];
