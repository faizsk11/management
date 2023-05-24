import 'package:flutter/material.dart';
import 'package:management/AdminHistoryScreen.dart';
import 'package:management/AdminScreen.dart';
import 'package:management/BuyScreen.dart';
import 'package:management/ClinetScreen.dart';
import 'package:management/SellScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BuyScreen()),
                      );
                    },
                    child: ClipRRect(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                          child: SizedBox.square(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900,
                                  border: Border.all(
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.account_balance_wallet,
                                            size: 80,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'BUY',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.03,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SellScreen()),
                      );
                    },
                    child: ClipRRect(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                          child: SizedBox.square(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900,
                                  border: Border.all(
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.addchart_rounded,
                                            size: 80,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'SELL',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.03,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminScreen()),
                      );
                    },
                    child: ClipRRect(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                          child: SizedBox.square(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900,
                                  border: Border.all(
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.window_rounded,
                                            size: 80,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'ADMIN',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.03,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ClientScreen()),
                        );
                      },
                      child: ClipRRect(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Center(
                            child: SizedBox.square(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade900,
                                    border: Border.all(
                                      width: 1,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.person_search_sharp,
                                              size: 80,
                                              color: Colors.white,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 20.0),
                                              child: Text(
                                                'CLIENTS',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.03,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AdminHistoryScreen()),
                        );
                      },
                      child: ClipRRect(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Center(
                            child: SizedBox.square(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade900,
                                    border: Border.all(
                                      width: 1,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.assignment,
                                              size: 80,
                                              color: Colors.white,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 20.0),
                                              child: Text(
                                                'HISTORY',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.03,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ),
                    ClipRRect(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                          child: SizedBox.square(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900,
                                  border: Border.all(
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.notifications_active,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.08,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'NOTIFICATION',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.03,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
