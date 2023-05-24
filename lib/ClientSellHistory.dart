import 'package:flutter/material.dart';

class ClientSellHistoryScreen extends StatefulWidget {
  const ClientSellHistoryScreen({Key? key}) : super(key: key);

  @override
  State<ClientSellHistoryScreen> createState() => _ClientSellHistoryScreenState();
}

class _ClientSellHistoryScreenState extends State<ClientSellHistoryScreen> {
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

  List<String> quality = [
    '35 Quality',
    '50 Quality',
    '100 Quality',
    '35 Quality',
    '50 Quality',
    '100 Quality',
    '35 Quality',
    '50 Quality',
    '100 Quality',
    '35 Quality',
    '35 Quality',
    '50 Quality',
    '100 Quality',
    '35 Quality',
    '50 Quality',
    '100 Quality',
    '35 Quality',
    '50 Quality',
    '100 Quality',
    '35 Quality',
  ];
  List<String> rate = [
    '@40',
    '@50',
    '@100',
    '@35',
    '@40',
    '@50',
    '@100',
    '@35',
    '@40',
    '@50',
    '@40',
    '@50',
    '@100',
    '@35',
    '@40',
    '@50',
    '@100',
    '@35',
    '@40',
    '@50',
  ];

  List<String> quantity = [
    '100 kg',
    '200 kg',
    '300 kg',
    '50 kg',
    '44 kg',
    '100 kg',
    '200 kg',
    '300 kg',
    '50 kg',
    '44 kg',
    '100 kg',
    '200 kg',
    '300 kg',
    '50 kg',
    '44 kg',
    '100 kg',
    '200 kg',
    '300 kg',
    '50 kg',
    '44 kg',
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

  List<String> pay = [
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

  List<String> credit = [
    'Rs 500',
    'Rs 2200',
    'Rs 3300',
    'Rs 4565',
    'Rs 505',
    'Rs 500',
    'Rs 2200',
    'Rs 3300',
    'Rs 4565',
    'Rs 505',
    'Rs 500',
    'Rs 2200',
    'Rs 3300',
    'Rs 4565',
    'Rs 505',
    'Rs 500',
    'Rs 2200',
    'Rs 3300',
    'Rs 4565',
    'Rs 505',
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
          List<String>.generate(names.length, (index) => names[index]);
      for (int i = 0; i < names.length; i++) {
        final name = names[i].toLowerCase();
        final qualityItem = quality[i].toLowerCase();
        final rateItem = rate[i].toLowerCase();
        final quantityItem = quantity[i].toLowerCase();
        final totalItem = total[i].toLowerCase();
        final payItem = pay[i].toLowerCase();
        final creditItem = credit[i].toLowerCase();

        if (!name.contains(query) &&
            qualityItem != query &&
            rateItem != query &&
            quantityItem != query &&
            totalItem != query &&
            payItem != query &&
            creditItem != query) {
          filteredNames.remove(names[i]);
        }
      }
    });
  }

  void _onTapName(String name) {
    // Do something when a name is tapped
    print('Selected name: $name');
  }

  @override
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
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Quality')),
                  DataColumn(label: Text('Rate')),
                  DataColumn(label: Text('Quantity')),
                  DataColumn(label: Text('Total')),
                  DataColumn(label: Text('Pay')),
                  DataColumn(label: Text('Credit')),
                ],
                rows: List<DataRow>.generate(
                  filteredNames.length,
                  (index) {
                    return DataRow(
                      cells: [
                        DataCell(Text(filteredNames[index])),
                        DataCell(Text(quality[index])),
                        DataCell(Text(rate[index])),
                        DataCell(Text(quantity[index])),
                        DataCell(Text(total[index])),
                        DataCell(Text(pay[index])),
                        DataCell(Text(credit[index])),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
