// import 'package:flutter/material.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';
// class SearchSuggestions extends StatefulWidget {
//   const SearchSuggestions({super.key});

//   @override
//   State<SearchSuggestions> createState() => _SearchSuggestionsState();
// }

// class _SearchSuggestionsState extends State<SearchSuggestions> {
//  List<String> suggestons = ["USA", "UK", "Uganda", "Uruguay", "United Arab Emirates"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//          appBar: AppBar(
//             title: Text("Autocomplete on TextField"),
//             backgroundColor: Colors.redAccent
//          ),
//           body: Container(
//              margin: EdgeInsets.all(30),
//              alignment: Alignment.topCenter,
//              child: Column(
//                  children: [
//                       TypeAheadField(
//                           animationStart: 0,
//                           animationDuration: Duration.zero,
//                           textFieldConfiguration: TextFieldConfiguration(
//                             autofocus: true,
//                             style: TextStyle(fontSize: 15),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder()
//                             )
//                           ),
//                           suggestionsBoxDecoration: SuggestionsBoxDecoration(
//                               color: Colors.lightBlue[50]
//                           ),
//                           suggestionsCallback: (pattern){
//                               List<String> matches = <String>[];
//                               matches.addAll(suggestons);

//                               matches.retainWhere((s){
//                                 return s.toLowerCase().contains(pattern.toLowerCase());
//                               });
//                               return matches;
//                           },
//                           itemBuilder: (context, sone) {
//                             return Card(
//                                child: Container( 
//                                   padding: EdgeInsets.all(10),
//                                   child:Text(sone.toString()),
//                                )
//                             );
//                           },
//                           onSuggestionSelected: (suggestion) {
//                              print(suggestion);
//                           },
//                         )
//                  ],
//              ),
//           )
//       );
//   }
// }