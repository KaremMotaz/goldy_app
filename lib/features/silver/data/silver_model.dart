import 'package:goldy/core/models/metal_model.dart';

class SilverModel extends MetalModel {
  SilverModel({
    required super.name,
    required super.symbol,
    required super.price,
    required super.updatedAt,
    required super.updatedAtReadable,
  });

  factory SilverModel.fromJson(Map<String, dynamic> json) {
    return SilverModel(
      name: json['name'],
      symbol: json['symbol'],
      price: json['price'],
      updatedAt: json['updatedAt'],
      updatedAtReadable: json['updatedAtReadable'],
    );
  }

  @override
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
