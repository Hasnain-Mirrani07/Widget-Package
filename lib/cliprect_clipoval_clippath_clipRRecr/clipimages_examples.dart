import 'package:flutter/material.dart';

class ClipImagesExamples extends StatelessWidget {
  const ClipImagesExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black12,
          title: const Text("Clip Images Examples"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              clipoval(),
              clipRect(),
              clipRRect(),
              clipPath()
            ]),
          ),
        ),
      ),
    );
  }

  Widget clipoval() {
    return Column(
      children: [
        const Text(
          "ClipOval",
          style: TextStyle(fontSize: 25),
        ),
        const SizedBox(
          height: 20,
        ),
        ClipOval(
          child: Image.network(
            'https://i.ibb.co/1vXpqVs/flutter-logo.jpg',
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }

  Widget clipRect() {
    return Column(
      children: [
        const Text(
          "ClipRect",
          style: TextStyle(fontSize: 25),
        ),
        const SizedBox(
          height: 20,
        ),
        ClipRect(
          child: Container(
            child: Align(
              alignment: Alignment.topLeft,
              widthFactor: 0.75,
              heightFactor: 0.75,
              child: Image.network('https://i.ibb.co/1vXpqVs/flutter-logo.jpg'),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget clipRRect() {
    return Column(
      children: [
        const Text(
          "ClipRRect",
          style: TextStyle(fontSize: 25),
        ),
        const SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            child: Align(
              alignment: Alignment.topLeft,
              widthFactor: 0.75,
              heightFactor: 0.75,
              child: Image.network('https://i.ibb.co/1vXpqVs/flutter-logo.jpg'),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }

  Widget clipPath() {
    return Column(
      children: [
        const Text(
          "ClipPath",
          style: TextStyle(fontSize: 25),
        ),
        const SizedBox(
          height: 20,
        ),
        ClipPath(
          clipper: MyCustomClipper(),
          child: Image.network(
            'https://i.ibb.co/1vXpqVs/flutter-logo.jpg',
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width * 0.75, size.height);
    path.lineTo(size.width * 0.25, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
