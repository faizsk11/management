import 'package:dart_appwrite/dart_appwrite.dart' as server;
import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart' as client;
import 'package:management/OTPScreen.dart';

void main() async {
/*   var key =
      '5a48813ecb88fc301ef52913ff37bd939275c058cf3b82bf17f2d69a68b1c0ed5c9ae7de18897ba8a136bf14af9e06a2945143ea3b02dd9e1247c555a3ce8e7e930ddc915ddb119ec8bc3c468d6788f3f2e576ba86ec8c745e237447ec74c9022a35694e358473b16704e4339b710013e5831e89d7b8628728226719619ca831';
  server.Client server_client = server.Client();
  client.Client client_client = client.Client();
  server.Account server_account = server.Account(server_client);
  client.Account client_account = client.Account(client_client);


 client_client
    .setEndpoint('https://cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('64677b839679a74d6976') // Your project ID
  ;
  Future client_result = client_account.createPhoneSession(
    userId: 'business_example',
    phone: '+917871059711',
  );
  client_result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  }); */
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: OTPScreen());
  }
}
