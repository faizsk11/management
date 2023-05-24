import 'package:flutter/material.dart';

class AdminCreditScreen extends StatefulWidget {
  const AdminCreditScreen({Key? key}) : super(key: key);

  @override
  State<AdminCreditScreen> createState() => _AdminCreditScreenState();
}

class _AdminCreditScreenState extends State<AdminCreditScreen> {
  List<String> date = [
    '22/02/2023',
    '22/02/2024',
    '22/02/2025',
    '22/02/2026',
    '23/03/2023',
    '24/03/2023',
    '25/03/2023',
    '26/03/2023',
    '27/03/2023',
    '28/03/2023',
    '29/03/2023',
    '30/03/2023',
    '31/03/2023',
    '2/03/2023',
    '3/03/2023',
    '4/03/2023',
    '5/03/2023',
    '6/03/2023',
    '7/03/2023',
    '8/03/2023',
  ];
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
    '35',
    '50',
    '100',
    '35',
    '50',
    '100',
    '35',
    '50',
    '100',
    '35',
    '35',
    '50',
    '100',
    '35',
    '50',
    '100',
    '35',
    '50',
    '100',
    '35',
  ];
  List<String> rate = [
    '40',
    '50',
    '100',
    '35',
    '40',
    '50',
    '100',
    '35',
    '40',
    '50',
    '40',
    '50',
    '100',
    '35',
    '40',
    '50',
    '100',
    '35',
    '40',
    '50',
  ];

  List<String> quantity = [
    '100',
    '200',
    '300',
    '50',
    '44',
    '100',
    '200',
    '300',
    '50',
    '44',
    '100',
    '200',
    '300',
    '50',
    '44',
    '100',
    '200',
    '300',
    '50',
    '44',
  ];

  List<String> total = [
    '1800',
    '2200',
    '33,000',
    '45,650',
    '50,500',
    '55,000',
    '60,000',
    '75,000',
    '80,000',
    '85,000',
    '1800',
    '2200',
    '33,000',
    '45,650',
    '50,500',
    '55,000',
    '60,000',
    '75,000',
    '80,000',
    '85,000',
  ];

  List<String> credit = [
    '500',
    '2200',
    '3300',
    '4565',
    '505',
    '500',
    '2200',
    '3300',
    '4565',
    '505',
    '500',
    '2200',
    '3300',
    '4565',
    '505',
    '500',
    '2200',
    '3300',
    '4565',
    '505',
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
      filteredNames = names.where((name) {
        final nameLower = name.toLowerCase();
        final index = names.indexOf(name);

        final qualityItem = quality[index].toLowerCase();
        final rateItem = rate[index].toLowerCase();
        final quantityItem = quantity[index].toLowerCase();
        final totalItem = total[index].toLowerCase();

        final creditItem = credit[index].toLowerCase();
        final dateItem = date[index].toLowerCase();

        final fieldPairs = query.split(',').map((field) => field.trim());
        for (var fieldPair in fieldPairs) {
          final fieldParts = fieldPair.split(' ');
          if (fieldParts.length != 2) {
            continue;
          }
          final fieldName = fieldParts[0];
          final fieldValue = fieldParts[1];

          switch (fieldName) {
            case 'name':
              if (!nameLower.contains(fieldValue)) {
                return false;
              }
              break;
            case 'quality':
              if (!qualityItem.contains(fieldValue)) {
                return false;
              }
              break;
            case 'rate':
              if (!rateItem.contains(fieldValue)) {
                return false;
              }
              break;
            case 'quantity':
              if (!quantityItem.contains(fieldValue)) {
                return false;
              }
              break;
            case 'total':
              if (!totalItem.contains(fieldValue)) {
                return false;
              }
              break;

            case 'credit':
              if (!creditItem.contains(fieldValue)) {
                return false;
              }
              break;
            case 'date':
              if (!dateItem.contains(fieldValue)) {
                return false;
              }
            default:
              continue;
          }
        }
        return true;
      }).toList();
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
                  maxLength: 100,
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
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Quality')),
                  DataColumn(label: Text('Rate')),
                  DataColumn(label: Text('Quantity')),
                  DataColumn(label: Text('Total')),
                  DataColumn(label: Text('Credit')),
                ],
                rows: List<DataRow>.generate(filteredNames.length, (index) {
                  final dataIndex = names.indexOf(filteredNames[index]);
                  return DataRow(
                    cells: [
                      DataCell(Text(date[dataIndex])),
                      DataCell(Text(filteredNames[index])),
                      DataCell(Text(quality[dataIndex])),
                      DataCell(Text(rate[dataIndex])),
                      DataCell(Text(quantity[dataIndex])),
                      DataCell(Text(total[dataIndex])),
                      DataCell(Text(credit[dataIndex])),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
