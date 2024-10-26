import 'package:flutter/material.dart';
import 'package:pathpilot/screens/Search/places.dart';
import 'ProfileDescription.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SearchScreen> {
  bool isSearching = false;
  String searchText = '';

  // Define the recommendations list here
  List<String> recommendations = [
    'Ms. Prajakta Pote',
    'Dr. Nilakshi Jain',
    'Ms. Mitali Sinha',
    'Ms. Neha Pawar',
  ];

  // Define recent searches list
  List<String> recentSearches = [
    'Dr. Nilakshi Jain',
    'Ms. Mitali Sinha',
  ];

  void _navigateToProfileDescription(String name) {
    setState(() {
      recentSearches = [...{...recentSearches, searchText.isNotEmpty ? searchText : name}];
    });

    Map<String, dynamic> place = places.firstWhere((place) => place['name'] == name);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfileDescription(place: place),
      ),
    );
  }

  List<String> filterRecommendations() {
    if (searchText.isEmpty) {
      return recommendations;
    } else {
      return recommendations.where((recommendation) {
        return recommendation.toLowerCase().contains(searchText.toLowerCase());
      }).toList();
    }
  }

  void _handleSearchError() {
    setState(() {
      searchText = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> filteredRecommendations = filterRecommendations();
    bool hasError = filteredRecommendations.isEmpty && searchText.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: isSearching ? 200 : 60,
          child: isSearching
              ? TextField(
            onChanged: (value) {
              setState(() {
                searchText = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'Type something...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            ),
          )
              : InkWell(
            onTap: () {
              setState(() {
                isSearching = !isSearching;
              });
            },
            child: const Icon(Icons.search),
          ),
        ),
        actions: [
          if (hasError)
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _handleSearchError,
            ),
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              setState((){
                isSearching = false;
                searchText = '';
              });
            },
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: isSearching
                ? ListView.builder(
              itemCount: filteredRecommendations.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        filteredRecommendations[index],
                        style: const TextStyle(color: Colors.black),
                      ),
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xFF64B5F6),
                        child: Icon(
                          Icons.account_circle_sharp,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        _navigateToProfileDescription(filteredRecommendations[index]);
                      },
                    ),
                    if (index < filteredRecommendations.length - 1) const Divider(),
                  ],
                );
              },
            )
                : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Recent Searches',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            recentSearches.clear();
                          });
                        },
                        child: const Text(
                          'Clear',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: recentSearches.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            recentSearches[index],
                            style: const TextStyle(color: Colors.black),
                          ),
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xFF64B5F6),
                            child: Icon(
                              Icons.history,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            _navigateToProfileDescription(recentSearches[index]);
                          },
                        ),
                        if (index < recentSearches.length - 1) const Divider(),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          Visibility(
            visible: hasError,
            child: const NoMatchFoundWidget(),
          ),
        ],
      ),
    );
  }
}

class NoMatchFoundWidget extends StatefulWidget {
  const NoMatchFoundWidget({super.key});

  @override
  _NoMatchFoundWidgetState createState() => _NoMatchFoundWidgetState();
}

class _NoMatchFoundWidgetState extends State<NoMatchFoundWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/match not found.jpg'),
        ],
      ),
    );
  }
}
