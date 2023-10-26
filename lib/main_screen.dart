import 'package:flutter_application_1/detail_screen.dart';
import 'package:flutter_application_1/models/ShoesDetail.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wisata Rambang'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final ShoesDetail shoes = shoesDetailList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(shoes: shoes);
                }));
              },
              child: Card(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: Image.asset(shoes.imageAsset)),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                shoes.name,
                                style: const TextStyle(fontSize: 16.0),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ]),
                      ))
                ],
              )),
            );
          },
          itemCount: shoesDetailList.length,
        ));
  }
}
