import 'dart:convert';

class Catalog {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Catalog({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
  });

  // factory Catalog.fromMap(Map<String, dynamic> map) {
  //   return Catalog(
  //     id: map["id"],
  //     name: map["name"],
  //     desc: map["desc"],
  //     price: map["price"],
  //     color: map["color"],
  //     image: map["image"],
  //   );
  // }

  // toMap() => {
  //       "id": id,
  //       "name": name,
  //       "desc": desc,
  //       "price": price,
  //       "color": color,
  //       "imageurl": image,
  //     };

  // Catalog copyWith({
  //   int? id,
  //   String? name,
  //   String? desc,
  //   num? price,
  //   String? color,
  //   String? image,
  // }) {
  //   return Catalog(
  //     id: id ?? this.id,
  //     name: name ?? this.name,
  //     desc: desc ?? this.desc,
  //     price: price ?? this.price,
  //     color: color ?? this.color,
  //     image: image ?? this.image,
  //   );
  // }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Catalog.fromMap(Map<String, dynamic> map) {
    return Catalog(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Catalog.fromJson(String source) =>
      Catalog.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Catalog(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Catalog &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}

class Item {
  static List<Catalog> items;
}
