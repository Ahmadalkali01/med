import 'dart:ui' show FontWeight, ImageFilter;

import 'package:flutter/material.dart';
import 'package:weather_app/additionalInfor.dart';

class Weather_appp extends StatelessWidget {
  const Weather_appp({super.key});
  // final String label;
  // final IconData icon;
  // final String label;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'weather app',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(width: double.infinity),
          SizedBox(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(children: [
                        Text(
                          '300° F',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Icon(
                          Icons.cloud,
                          size: 60,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Rain',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          const Text(
            'weather forcast',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 10,
          ),
          //main card
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                scrollablePart(
                  label: '00:00',
                  icon: Icons.cloud,
                  value: '325:3',
                ),
                scrollablePart(
                  label: '04:00',
                  icon: Icons.cloud,
                  value: '315:3',
                ),
                scrollablePart(
                  label: '05:00',
                  icon: Icons.cloud,
                  value: '310:3',
                ),
                scrollablePart(
                  label: '07:00',
                  icon: Icons.cloud,
                  value: '320:3',
                ),
                scrollablePart(
                  label: '09:00',
                  icon: Icons.cloud,
                  value: '330:3',
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          const Text(
            'Additional information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 8,
          ),
          // Container(
          //   width: double.infinity,
          //   child: Column(
          //     children: [
          //       Text(
          //         'Humidity',
          //       ),
          //       Icon(Icons.water_drop),
          //       Text('94'),
          //     ],
          //   ),
          // ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              additionalInfor(
                icon: Icons.cloud,
                label: 'Humidity',
                value: ('96'),
              ),
              additionalInfor(
                icon: Icons.sunny,
                label: 'tempreture',
                value: ('96'),
              ),
              additionalInfor(
                icon: Icons.beach_access,
                label: 'pressure',
                value: ('96'),
              ),
            ],
          )

          //   ])
          // ])
          //weather forcast cards
          // const Placeholder(
          //   fallbackHeight: 150,
          // ),
        ]),
      ),
    );
  }
}

class scrollablePart extends StatelessWidget {
  final String label;
  final IconData icon;
  final String value;
  const scrollablePart(
      {super.key,
      required this.label,
      required this.icon,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: 100,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Icon(icon),
            Text(value),
          ],
        ),
      ),
    );
  }
}
