class Food {
  Food({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.kcal,
    required this.cookingTime,
    required this.description,
  });

  String id;
  String image;
  String name;
  int price;
  double rate;
  String kcal;
  String cookingTime;
  String description;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        price: json["price"],
        rate: json["rate"].toDouble(),
        kcal: json["kcal"],
        cookingTime: json["cooking_time"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "price": price,
        "rate": rate,
        "kcl": kcal,
        "cooking_time": cookingTime,
        "description": description,
      };
}

final dummyFoods = [
  Food(
    id: '1',
    image: 'asset/burger.jpeg',
    name: 'Burger Cheese',
    price: 15,
    rate: 4.5,
    kcal: '100',
    cookingTime: '20 Min',
    description:
        'Pasteurized process cheese can be made from a single cheese, or a blend of several cheeses. Cream, milk fat, water, salt, color, and spices may also be added. The mixture is heated with an emulsifier, poured into a mold, and allowed to cool.',
  ),
  Food(
    id: '2',
    image: 'asset/pizza.jpeg',
    name: 'Pizza Hots',
    price: 20,
    rate: 4.5,
    kcal: '100',
    cookingTime: '30 Min',
    description:
        'Chicago-style pizza usually refers to deep-dish pizza, which is a thick pizza baked in a pan and layered with cheese, fillings like meat and vegetables, and sauce–in that order. The crust is usually two to three inches tall and gets slightly fried due to the oil in the pan.',
  ),
  Food(
    id: '3',
    image: 'asset/salad.webp',
    name: 'Salad Health',
    price: 10,
    rate: 4,
    kcal: '20',
    cookingTime: '15 Min',
    description:
        'Salad greens contain Vitamin A, Vitamin C, beta-carotene, calcium, folate, fiber, and phytonutrients (see Table 1). Leafy vegetables are a good choice for a healthful diet because they do not contain cholesterol and are naturally low in calories and sodium.',
  ),
  Food(
    id: '4',
    image: 'asset/salmon.jpeg',
    name: 'Salmon Fresh Mounth',
    price: 12,
    rate: 4.8,
    kcal: '60',
    cookingTime: '18 Min',
    description:
        'Healthier just a little bit easier — and more fun!Salmon is one of the most nutritious foods on the planet.This popular fatty fish is not only loaded with nutrients but also may reduce certain risk factors for several diseases.What’s more, it’s tasty, versatile, and widely available.',
  ),
];
