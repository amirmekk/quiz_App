import 'package:flutter/material.dart';
import 'package:routing/pages/searchSuggestions.dart';
import 'package:routing/widgets/popUpAlert2.dart';
//import 'package:routing/widgets/popUpAlert.dart';

class DataSearch extends SearchDelegate {
  List data;
  DataSearch({this.data});
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_forward),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        query = '';
      },
      icon: Icon(Icons.clear),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List newData = data
        .where((f) => f.itemTwo.contains(query) || f.itemOne.contains(query))
        .toList();
    return SearchSuggestions(data: newData,);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List newData = data
        .where((f) => f.itemTwo.contains(query) || f.itemOne.contains(query))
        .toList();
    return SearchSuggestions(data : newData);
  }
}
