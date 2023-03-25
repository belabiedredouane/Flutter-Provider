import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:use_progider/my_provider.dart';
import 'dashboard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<MyProvider>(
        create: (_) => MyProvider(),
        child: const CounterPro(),
      ),
    );
  }
}

class CounterPro extends StatefulWidget {
  const CounterPro({Key? key}) : super(key: key);

  @override
  State<CounterPro> createState() => _CounterProState();
}

class _CounterProState extends State<CounterPro> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: Center(
        child: Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Provider.of<MyProvider>(context, listen: false).increment();
        },
      ),
    );
  }
}
