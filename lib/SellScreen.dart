import 'package:flutter/material.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({Key? key}) : super(key: key);

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> allItems = [
    'item 5',
    'item 6',
    'item 7',
    'item 8',
    'item 9',
    'item 10',
    'item 11',
    'item 12',
    'item 13',
    'item 14',
    'item 15',
    'item 16',
    'item 17',
    'item 18',
    'item 19',
    'Savjev SK',
    'Riyaz Ahmed',
    'Md Firoz',
    'Md Fiza',
  ];
  List<String> qualityItem = [
    'Quality 35',
    'Quality 36',
    'Quality 37',
    'Quality 38',
  ];

  String _searchQueryName = '';
  String _searchQueryQuality = '';
  String? _selectedItem;
  String? selectedQualityItem;
  TextEditingController _selectedItemController = TextEditingController();
  TextEditingController qualityController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController totalController = TextEditingController();
  TextEditingController payController = TextEditingController();
  TextEditingController creditController = TextEditingController();
  TextEditingController DateTimeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedItemController.addListener(_handleSelectedItemChangeName);
    qualityController.addListener(_handleSelectedItemChangeQuality);
  }

  @override
  void dispose() {
    _selectedItemController.removeListener(_handleSelectedItemChangeName);
    qualityController.removeListener(_handleSelectedItemChangeQuality);
    qualityController.dispose();
    _selectedItemController.dispose();
    super.dispose();
  }

  void _handleSelectedItemChangeName() {
    setState(() {
      _selectedItem = _selectedItemController.text;
    });
  }

  void _handleSelectedItemChangeQuality() {
    setState(() {
      selectedQualityItem = qualityController.text;
    });
  }

  void updateFilteredItemsName(String query) {
    setState(() {
      _searchQueryName = query;
    });
  }

  void updateFilteredItemsQuality(String query) {
    setState(() {
      _searchQueryQuality = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> filteredItems = allItems
        .where((item) =>
            item.toLowerCase().contains(_searchQueryName.toLowerCase()))
        .toList();
    List<String> qualityFilter = qualityItem
        .where((item) =>
            item.toLowerCase().contains(_searchQueryQuality.toLowerCase()))
        .toList();
    return Scaffold(
         appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Column(
                      children: [
                        Text(
                          'Ideal',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: MediaQuery.of(context).size.height * 0.1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Hardware',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: MediaQuery.of(context).size.height * 0.08,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        readOnly: true,
                        controller: DateTimeController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: DateTime.now().toString(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        onChanged: (value) {
                          updateFilteredItemsName(value);
                        },
                        controller: _selectedItemController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'NAME',
                        ),
                      ),
                    ),
                  ),
                  if (_searchQueryName.isNotEmpty && filteredItems.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          children: filteredItems.map((item) {
                            return ListTile(
                              title: Text(item),
                              onTap: () {
                                setState(() {
                                  _selectedItemController.text = item;
                                  _selectedItem = item;
                                  _searchQueryName = '';
                                });
                              },
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        onChanged: (value) {
                          updateFilteredItemsQuality(value);
                        },
                        controller: qualityController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'QUALITY',
                        ),
                      ),
                    ),
                  ),
                  if (_searchQueryQuality.isNotEmpty && qualityItem.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          children: qualityFilter.map((item) {
                            return ListTile(
                              title: Text(item),
                              onTap: () {
                                setState(() {
                                  qualityController.text = item;
                                  selectedQualityItem = item;
                                  _searchQueryQuality = '';
                                });
                              },
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        controller: quantityController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'QUANTITY',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        controller: totalController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'TOTAL',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        controller: payController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'PAY',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        controller: creditController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'CREDIT',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: SizedBox(
                        height: 50,
                        width: 130,
                        child: ElevatedButton(
                            onPressed: () {
                              /*              Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        ); */
                            },
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
