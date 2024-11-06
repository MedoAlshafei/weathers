import 'package:flutter/material.dart';
import 'package:weathers/color.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.menu_rounded,
        ),
        title: const Center(child: Text('San Francisco')),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Image.asset(
                'images/clear.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: 400,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Text(
                  '52°',
                  style: TextStyle(
                    color: darkpurple,
                    fontWeight: FontWeight.w800,
                    fontSize: 70,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sunny',
                        style: TextStyle(
                          color: darkpurple,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'H:63°|L:51',
                            style: TextStyle(
                              color: darkpurple,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Card(
                  elevation: 0,
                  color: whiteBlue,
                  child: Column(
                    children: [
                      const Text(
                        'Today',
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Image.asset('images/clear.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
