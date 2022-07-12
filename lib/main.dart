import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ticket_demo/firebase_config.dart';
import 'package:ticket_demo/presentation/routes/main_route.dart';
import 'package:ticket_demo/presentation/routes/route_constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseConfig.platformOptions);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteConstants.products,
      onGenerateRoute: mainRoute,
    );
  }
}
