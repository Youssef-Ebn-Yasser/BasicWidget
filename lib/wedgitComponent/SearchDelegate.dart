import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchDelegateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Delegate ..."),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: customSearchDelegate());
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}

class customSearchDelegate extends SearchDelegate {
  List? names = [
    "ali",
    "said",
    "hend",
    "salama",
    "alia",
  ];
  List? filteredList;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, "");
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text("nothing");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query != "") {
      filteredList = names!
          .where((el) =>
              el!.contains(query.toLowerCase()) ||
              el!.contains(query.toUpperCase()))
          .toList();
    }

    if (query == "") {
      return ListView.builder(
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Container(
              color: Colors.orange,
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  "${names![i]}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: names!.length,
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Container(
              color: Colors.orange,
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  "${filteredList![i]}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: filteredList!.length,
      );
    }
  }
}
