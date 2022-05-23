class Restaurantcategory {
  const Restaurantcategory({
    required this.image,
    required this.name,
    required this.desc,

  });

  final String image;
  final String name;
  final String desc;


  static const restaurantcategory = [
    Restaurantcategory(
      image: 'assets/images/food1.jpg',
      name:'New Bakins',
      desc: '22ne new york'
    ),
    Restaurantcategory(
        image: 'assets/images/food2.jpg',
        name:'Great Golden',
        desc: 'A-52 new jersey'
    ),
    Restaurantcategory(
      image: 'assets/images/food 3.jpg',
      name:'22nd park avenue',
        desc: '22nd avenue'
    ),
    Restaurantcategory(
      image: 'assets/images/food1.jpg',
      name:'The Obamas',
        desc: 'A677 main street'

    ),
    Restaurantcategory(
      image: 'assets/images/food2.jpg',
      name:'Bahamas delight',
        desc: '32 parl NY'
    ),
    Restaurantcategory(
      image: 'assets/images/food 3.jpg',
      name:'Magaldham',
        desc: 'Mgm grands 52'
    ),
    Restaurantcategory(
      image: 'assets/images/food1.jpg',
      name:'Trumps Cuisine',
        desc: 'Trump tower'


    ),
  ];
}




