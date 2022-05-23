class Productcategory {
  const Productcategory({
    required this.image,
    required this.name,

  });

  final String image;
  final String name;


  static const productcategory = [
    Productcategory(
        image: 'assets/images/pizza.png',
        name: 'Pizza',
        ),
    Productcategory(
        image: 'assets/images/borgir.png',
        name: 'burger',
        ),
    Productcategory(
        image: 'assets/images/pureveg.png',
        name: 'Pure veg',
       ),
    Productcategory(
        image: 'assets/images/pizza2.png',
        name: 'Chinese',
       ),
    Productcategory(
      image: 'assets/images/pizza.png',
      name: 'Pizza',
    ),
    Productcategory(
      image: 'assets/images/borgir.png',
      name: 'burger',

    ),
  ];
}

