import 'package:flutter/material.dart';
import 'package:prak2/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'model/tourism_place.dart';

class DoneTourismList extends StatelessWidget{
  const DoneTourismList({
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList =
        Provider.of<DoneTourismProvider>(
          context,
          listen: false,
        ).doneTourismPlaceList;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Wisata Telah dikunjungi'),
        ),
        body: ListView.builder(
            itemBuilder: (context, index){
              final TourismPlace place = doneTourismPlaceList[index];
              return Card(
                color: Colors.white60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset(place.imageAsset),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              place.name,
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(place.location),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: const Icon(Icons.done_outline),
                    )
                  ],
                ),
              );
            },
          itemCount: doneTourismPlaceList.length,
        ),
    );
  }

}