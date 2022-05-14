import 'package:flutter/material.dart';
import 'package:flutter_travelling_app/Color/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Models/activity_model.dart';
import '../Models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;
  const DestinationScreen({Key? key, required this.destination})
      : super(key: key);

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (var i = 0; i < rating; i++) {
      stars += '⭐ ';
      stars.trim();
    }
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0)
                    ]),
                child: Hero(
                  tag: widget.destination.imageUrl!,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image(
                      image: AssetImage('${widget.destination.imageUrl}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 40.0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 30,
                        )),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              size: 30,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.arrowDownShortWide,
                              size: 30,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.destination.city}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2),
                    ),
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 10.0,
                          color: Colors.white70,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '${widget.destination.country}',
                          style: const TextStyle(
                              color: Colors.white70, fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Positioned(
                  right: 20,
                  bottom: 20,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white70,
                    size: 25,
                  ))
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 10, bottom: 15),
              itemCount: widget.destination.activities!.length,
              itemBuilder: (BuildContext context, int index) {
                Activity activity = widget.destination.activities![index];
                return Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(120, 20, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    '${activity.name}',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '\$${activity.price}',
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text(
                                      'per tax',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text('${activity.type}'),
                            _buildRatingStars(activity.rating!.toInt()),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  alignment: Alignment.center,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: accentColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(activity.startTimes![0]),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  alignment: Alignment.center,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: accentColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(activity.startTimes![1]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 15,
                      bottom: 15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('${activity.imageUrl}'),
                          fit: BoxFit.cover,
                          width: 100,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
