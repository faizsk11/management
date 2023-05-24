import 'package:flutter/material.dart';
import 'package:management/ClientBuyHistory.dart';
import 'package:management/ClientCredit.dart';
import 'package:management/ClientDue.dart';
import 'package:management/ClientSellHistory.dart';

class ClientStatsScreen extends StatefulWidget {
  const ClientStatsScreen({super.key});

  @override
  State<ClientStatsScreen> createState() => _ClientStatsScreenState();
}

class _ClientStatsScreenState extends State<ClientStatsScreen> {
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
                            builder: (context) =>
                                const ClientBuyHistoryScreen()),
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
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'Rs 20,000',
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
                            builder: (context) =>
                                const ClientSellHistoryScreen()),
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
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'Rs 32,800',
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
                            builder: (context) =>
                                const ClientCreditScreen()),
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
                                        MediaQuery.of(context).size.height * 0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'Rs 12,018',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.03,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'CREDIT',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: MediaQuery.of(context)
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
                            builder: (context) =>
                                const ClientDueScreen()),
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
                                            Padding(
                                              padding: EdgeInsets.only(top: 20.0),
                                              child: Text(
                                                'Rs 30,340',
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
                                            Padding(
                                              padding: EdgeInsets.only(top: 20.0),
                                              child: Text(
                                                'DUES',
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
                    /*       ClipRRect(
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
                                            Icons.add_circle,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.08,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'NEW QUALITY',
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
                                            Icons.add_circle,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.08,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'ADD CLIENT',
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
                        )), */
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
