import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  double _scalableHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double _scalableWidth(BuildContext context) {
    return MediaQuery.of(context).size.width ==
            MediaQuery.of(context).size.width / 2
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.width * .65;
  }

  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('backgroundd.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: [
                    SizedBox(
                      height: _scalableHeight(context),
                      width: _scalableWidth(context),
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
                      height: _scalableHeight(context),
                      width: _scalableWidth(context),
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
                      height: _scalableHeight(context),
                      width: _scalableWidth(context),
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
                      height: _scalableHeight(context),
                      width: _scalableWidth(context),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => GestureDetector(
                    onTap: () => _controller.animateToPage(index),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              (Theme.of(context).brightness == Brightness.dark
                                      ? Colors.white
                                      : Color.fromARGB(255, 255, 255, 255))
                                  .withOpacity(_current == index ? 0.9 : 0.4)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
            // GridView.count(crossAxisCount: 6, children: []),
            // GridView.count(crossAxisCount: 6, children: []),
            // GridView.count(crossAxisCount: 6, children: []),
