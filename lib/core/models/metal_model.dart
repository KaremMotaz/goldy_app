class MetalModel {
  final String name;
  final String symbol;
  final num price;
  final String updatedAt;
  final String updatedAtReadable;

  MetalModel({
    required this.name,
    required this.symbol,
    required this.price,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory MetalModel.fromJson(Map<String, dynamic> json) {
    return MetalModel(
      name: json['name'],
      symbol: json['symbol'],
      price: json['price'],
      updatedAt: json['updatedAt'],
      updatedAtReadable: json['updatedAtReadable'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'symbol': symbol,
      'price': price,
      'updatedAt': updatedAt,
      'updatedAtReadable': updatedAtReadable,
    };
  }
}
