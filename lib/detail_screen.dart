import 'package:flutter_application_1/models/ShoesDetail.dart';
import 'package:flutter/material.dart';

const informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final ShoesDetail shoes;
  const DetailScreen({Key? key, required this.shoes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: [
              Image.asset(shoes.imageAsset),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const FavoriteButton()
                    ],
                  ),
                ),
              )
            ],
          ),

          Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(shoes.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 30.0, fontFamily: 'Staatliches'))),

          //KUMPULAN ICON
          Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(children: <Widget>[
                      const Icon(Icons.stars_rounded),
                      const SizedBox(
                        height: 8.0,
                      ),
                    ]),
                    Column(children: <Widget>[
                      const Icon(Icons.stars_rounded),
                      const SizedBox(
                        height: 8.0,
                      ),
                    ]),
                    Column(children: <Widget>[
                      const Icon(Icons.stars_rounded),
                      const SizedBox(
                        height: 8.0,
                      ),
                    ]),

                    //DESKRIPSI
                  ])),
          Container(
              margin: const EdgeInsets.only(left: 7.0),
              child: Text(shoes.header,
                  style:
                      const TextStyle(fontSize: 40.0, fontFamily: 'Oxygen'))),
          Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(shoes.description,
                  textAlign: TextAlign.center,
                  style:
                      const TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'))),
          Container(
              margin: const EdgeInsets.only(left: 7.0),
              child: Text(shoes.sizeHeader,
                  style:
                      const TextStyle(fontSize: 40.0, fontFamily: 'Oxygen'))),
          SizedBox(
            height: 150,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: shoes.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList()),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click me!'),
            ),
          )
        ],
      )),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<StatefulWidget> createState() => FavoriteButtonState();
}

class FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
