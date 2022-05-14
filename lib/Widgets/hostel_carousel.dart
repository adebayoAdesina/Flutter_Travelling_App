import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Color/colors.dart';
import '../Models/destination_model.dart';
import '../Models/hotel_model.dart';

class HostelCarouselWidget extends StatelessWidget {
  const HostelCarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Exclusive Hotels',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              GestureDetector(
                onTap: (() {
                  print('see all');
                }),
                child: const Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hotels.length,
              itemBuilder: (BuildContext context, int index) {
                Hotel hotel = hotels[index];
                return Container(
                  margin: const EdgeInsets.all(10),
                  width: 210.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        bottom: 15.0,
                        child: Container(
                          height: 120.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '${hotel.name}',
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2),
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                '${hotel.address}',
                                style: const TextStyle(letterSpacing: 1.2),
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                '\$${hotel.price} / night',
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0)
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 180.0,
                            width: 180.0,
                            image: AssetImage('${hotel.imageUrl}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
