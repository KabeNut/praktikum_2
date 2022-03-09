class TourismPlace{
  String name;
  String location;
  String imageAsset;
  String image1;
  String image2;
  String desc;

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.image1,
    required this.image2,
    required this.desc,
});
}

var tourismPlaceList = [
  TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl. Pemuda',
      imageAsset: 'assets/submarine.jpg',
      image1: 'assets/monkasel_1.jpg',
      image2: 'assets/monkasel_2.jpg',
      desc: 'Museum Inside a decommissioned Russian war submarine tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine',
  ),
  TourismPlace(
      name: 'Kleteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/klenteng1.jpg',
      image1: 'assets/klenteng2.jpg',
      image2: 'assets/klenteng1.jpg',
      desc: 'Deskripsi Klenteng',
  ),
  TourismPlace(
      name: 'House Of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/sampoerna1.jpg',
      image1: 'assets/sampoerna2.jpg',
      image2: 'assets/sampoerna3.jpg',
      desc: 'Deskripsi Sampoerna',
  ),
  TourismPlace(
    name: 'Tugu Pahlawan',
    location: 'Alun-Alun Contong',
    imageAsset: 'assets/tugu1.jpg',
    image1: 'assets/tugu2.jpg',
    image2: 'assets/tugu3.jpg',
    desc: 'Deskripsi Tugu',
  ),
  TourismPlace(
    name: 'Patung Suro Boyo',
    location: 'Wonokromo',
    imageAsset: 'assets/suro1.jpg',
    image1: 'assets/suro2.jpg',
    image2: 'assets/suro3.jpg',
    desc: 'Deskripsi Suro Boyo',
  ),
];