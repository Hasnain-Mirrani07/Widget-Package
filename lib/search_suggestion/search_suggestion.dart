import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> suggestons = [
    "USA",
    "UK",
    "Uganda",
    "Uruguay",
    "United Arab Emirates"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Autocomplete on TextField"),
            backgroundColor: Colors.redAccent),
        body: Container(
          margin: const EdgeInsets.all(30),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Autocomplete(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  } else {
                    List<String> matches = <String>[];
                    matches.addAll(suggestons);

                    matches.retainWhere((s) {
                      return s
                          .toLowerCase()
                          .contains(textEditingValue.text.toLowerCase());
                    });
                    return matches;
                  }
                },
                onSelected: (String selection) {
                  print('You just selected $selection');
                },
              )
            ],
          ),
        ));
  }
}
