import 'package:flutter/material.dart';

class AdminCreditScreen extends StatefulWidget {
  const AdminCreditScreen({Key? key}) : super(key: key);

  @override
  State<AdminCreditScreen> createState() => _AdminCreditScreenState();
}

class _AdminCreditScreenState extends State<AdminCreditScreen> {
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
  ];

  List<String> total = [
    'Rs 1800',
    'Rs 2200',
    'Rs 33,000',
    'Rs 45,650',
    'Rs 50,500',
    'Rs 55,000',
    'Rs 60,000',
    'Rs 75,000',
    'Rs 80,000',
    'Rs 85,000',
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
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(filteredNames[index]),
                          Text(total[index]),
                        ],
                      ),
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
