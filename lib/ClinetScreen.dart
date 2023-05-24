import 'package:flutter/material.dart';
import 'package:management/ClientStatScreen.dart';

class ClientScreen extends StatefulWidget {
  const ClientScreen({Key? key}) : super(key: key);

  @override
  State<ClientScreen> createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  List<String> names = [
    'Aarav Agarwal',
    'Aditi Bhatnagar',
    'Arjun Chopra',
    'Divya Gupta',
    'Gaurav Kumar',
    'Isha Mehta',
    'Karan Patel',
    'Neha Sharma',
    'Rahul Singh',
    'Shreya Verma',
    'Aarav Agarwal',
    'Aditi Bhatnagar',
    'Arjun Chopra',
    'Divya Gupta',
    'Gaurav Kumar',
    'Isha Mehta',
    'Karan Patel',
    'Neha Sharma',
    'Rahul Singh',
    'Shreya Verma',
  ];

  List<String> filteredNames = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    filteredNames = names;
    super.initState();
  }

  void _filterNames(String query) {
    query = query.toLowerCase();
    setState(() {
      filteredNames =
          names.where((name) => name.toLowerCase().contains(query)).toList();
    });
  }

  void _onTapName(String name) {
    // Do something when a name is tapped
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ClientStatsScreen()),
    );
    print('Selected name: $name');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: TextFormField(
                onChanged: (value) {
                  _filterNames(value);
                },
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  border: OutlineInputBorder(),
                  hintText: 'Search Clients',
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredNames.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black38,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: ListTile(
                      title: Text(filteredNames[index]),
                      onTap: () {
                        _onTapName(filteredNames[index]);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
