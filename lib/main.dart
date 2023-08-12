import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/storage/storage_handler.dart';
import 'package:untitled3/features/manufacturers_list/presentation/manufactures_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageHandler.instance.openDB();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ManufacturesListScreen(),
    );
  }
}
