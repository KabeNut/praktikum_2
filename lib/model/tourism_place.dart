class TourismPlace{
  String name;
  String location;
  String imageAsset;

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
});
}

var tourismPlaceList = [
  TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl. Pemuda',
      imageAsset: 'assets/submarine.jpg',
  ),
  TourismPlace(
      name: 'Kleteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/klenteng1.jpg',
  ),
  TourismPlace(
      name: 'House Of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/sampoerna1.jpg',
  ),
  TourismPlace(
    name: 'Tugu Pahlawan',
    location: 'Alun-Alun Contong',
    imageAsset: 'assets/tugu1.jpg',
  ),
  TourismPlace(
    name: 'Patung Suro Boyo',
    location: 'Wonokromo',
    imageAsset: 'assets/suro1.jpg',
  ),
];