import 'package:flutter/material.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  State<BuyScreen> createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
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

  String _searchQuery = '';
  String? _selectedItem;
  TextEditingController _selectedItemController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedItemController.addListener(_handleSelectedItemChange);
  }

  @override
  void dispose() {
    _selectedItemController.removeListener(_handleSelectedItemChange);
    _selectedItemController.dispose();
    super.dispose();
  }

  void _handleSelectedItemChange() {
    setState(() {
      _selectedItem = _selectedItemController.text;
    });
  }

  void updateFilteredItems(String query) {
    setState(() {
      _searchQuery = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> filteredItems = allItems
        .where(
            (item) => item.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    onChanged: (value) {
                      updateFilteredItems(value);
                    },
                    controller: _selectedItemController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Search',
                    ),
                  ),
                ),
                if (_searchQuery.isNotEmpty && filteredItems.isNotEmpty)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: filteredItems.map((item) {
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            setState(() {
                              _selectedItemController.text = item;
                              _selectedItem = item;
                              _searchQuery = '';
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                if (_selectedItem != null)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Selected Item: $_selectedItem'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
