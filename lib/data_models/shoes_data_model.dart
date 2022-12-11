class Shoe {
  late String name;
  late String price;
  late String image;
  late String description;

  Shoe(
      {required this.name,
      required this.price,
      required this.image,
      required this.description});
}

List<Shoe> popularShoesList = [
  Shoe(
      name: "Nike Jordan",
      price: "\$493.00",
      image: "assets/Shoe1.png",
      description:
          "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by nike..."),
  Shoe(
      name: "Nike Air Max",
      price: "\$593.99",
      image: "assets/Shoe2.png",
      description:
          "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by nike..."),
  Shoe(
      name: "Nike Jordan",
      price: "\$493.00",
      image: "assets/Shoe3.png",
      description:
          "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by nike..."),
  Shoe(
      name: "Nike Air Max",
      price: "\$593.99",
      image: "assets/Shoe4.png",
      description:
          "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by nike..."),
  Shoe(
      name: "Nike Jordan",
      price: "\$493.00",
      image: "assets/Shoe5.png",
      description:
          "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by nike..."),
  Shoe(
      name: "Nike Air Max",
      price: "\$593.00",
      image: "assets/Shoe2.png",
      description:
          "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by nike..."),
];
