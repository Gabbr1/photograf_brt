import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(),
          items: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                padding: const EdgeInsets.all(16),
                children: List.generate(
                  6,
                  (index) => Image.asset(
                    'img$index.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                padding: const EdgeInsets.all(16),
                children: List.generate(
                  6,
                  (index) => Image.asset(
                    'img${index + 6}.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
              SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                padding: const EdgeInsets.all(16),
                children: List.generate(
                  6,
                  (index) => Image.asset(
                    'img${index + 12}.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
                  SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                padding: const EdgeInsets.all(16),
                children: List.generate(
                  2,
                  (index) => Image.asset(
                    'img${index + 18}.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

            // GridView.count(crossAxisCount: 6, children: []),
            // GridView.count(crossAxisCount: 6, children: []),
            // GridView.count(crossAxisCount: 6, children: []),