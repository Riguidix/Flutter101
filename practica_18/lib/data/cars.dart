class Car {
  final String Model;
  final String Location;
  final String Kilometers;
  final double Price;
  final String Src;

  const Car({
    required this.Model,
    required this.Location,
    required this.Kilometers,
    required this.Price,
    required this.Src,
  });

  static const CarItems = <Car>[
    Car(
      Model: "2026 Aion AION V Luxury Auto",
      Location: "Dealer new - VIC",
      Kilometers: "30,000 km",
      Price: 48270,
      Src:
          "https://carsales.pxcrush.net/carsales/cars/dealer/7v3p9y4rjbp8heiyy8kep455p.jpg?pxc_method=gravityfill&pxc_bgtype=self&pxc_size=900,600",
    ),

    Car(
      Model: "2026 MG ZS Vibe Auto MY26",
      Location: "Dealer new - Delicias",
      Kilometers: "329,29 km",
      Price: 23690,
      Src:
          "https://carsales.pxcrush.net/carsales/car/cil/f2jw51ml2lvavxvklg1u79r1y.jpg?pxc_method=gravityfill&pxc_bgtype=self&pxc_size=900,600",
    ),
  ];
}
