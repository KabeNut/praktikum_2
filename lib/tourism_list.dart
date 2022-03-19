import 'package:flutter/material.dart';
import 'package:prak2/list_item.dart';
import 'detail_screen.dart';
import 'model/tourism_place.dart';

class TourismList extends StatefulWidget{
  final List<TourismPlace> doneTourismPlaceList;

  const TourismList({
    Key? key,
    required this.doneTourismPlaceList
}) : super(key: key);

  _TourismListState createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> doneTourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
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

  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: ListItem(
              place: place,
              isDone: doneTourismPlaceList.contains(place),
              onCheckboxClick: (bool? value){
                setState(() {
                  if(value != null){
                    value
                        ? doneTourismPlaceList.add(place)
                        : doneTourismPlaceList.remove(place);
                  }
                });
              },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}