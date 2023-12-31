part of '_index.dart';

class Product {
  final String id;
  final String createdAt;
  final String name;
  final int total;
  final Map<String, String> images;
  Product({
    this.id = '',
    this.createdAt = '',
    this.name = '',
    this.total = 0,
    this.images = const {},
  });

  static Product random() {
    return Product(
      id: UniqueKey().toString().substring(2, 7),
      createdAt: DateTime.now().toString(),
      name: generateWordPairs(maxSyllables: 2).take(2).join(' '),
      total: Random().nextInt(99),
    );
  }

  static Product init() {
    return Product(
      id: '00000',
      createdAt: '2020-01-01 00:00:00.000000',
      name: 'nagabonar',
      total: Random().nextInt(100),
    );
  }

  Product copyWith({
    String? id,
    String? createdAt,
    String? name,
    int? total,
    Map<String, String>? images,
  }) {
    return Product(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      name: name ?? this.name,
      total: total ?? this.total,
      images: images ?? this.images,
    );
  }

  @override
  String toString() {
    return 'Product(id: $id, createdAt: $createdAt, name: $name, total: $total, images: $images)';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': createdAt,
      'name': name,
      'total': total,
      'images': images,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      createdAt: map['created_at'] ?? '',
      name: map['name'] ?? '',
      total: map['total']?.toInt() ?? 0,
      images: Map<String, String>.from(map['images'] ?? const {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
