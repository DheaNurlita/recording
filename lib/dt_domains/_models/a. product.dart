part of '_index.dart';

class Models {
  String name;
  String description;
  String id;
  int quantity;
  int price;
  String createdAt;
  String imageUrl;
  Models({
    this.name = '',
    this.description = '',
    this.id = '',
    this.quantity = 0,
    this.price = 0,
    this.createdAt = '',
    this.imageUrl = '',
  });

  Models copyWith({
    String? name,
    String? description,
    String? id,
    int? quantity,
    int? price,
    String? createdAt,
    String? imageUrl,
  }) {
    return Models(
      name: name ?? this.name,
      description: description ?? this.description,
      id: id ?? this.id,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      createdAt: createdAt ?? this.createdAt,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'description': description});
    result.addAll({'id': id});
    result.addAll({'quantity': quantity});
    result.addAll({'price': price});
    result.addAll({'created_at': createdAt});
    result.addAll({'image_url': imageUrl});

    return result;
  }

  factory Models.fromMap(Map<String, dynamic> map) {
    return Models(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      id: map['id'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      price: map['price']?.toInt() ?? 0,
      createdAt: map['created_at'] ?? '',
      imageUrl: map['image_url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Models.fromJson(String source) => Models.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Models(name: $name, description: $description, id: $id, quantity: $quantity, price: $price, createdAt: $createdAt, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Models &&
        other.name == name &&
        other.description == description &&
        other.id == id &&
        other.quantity == quantity &&
        other.price == price &&
        other.createdAt == createdAt &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        id.hashCode ^
        quantity.hashCode ^
        price.hashCode ^
        createdAt.hashCode ^
        imageUrl.hashCode;
  }
}
