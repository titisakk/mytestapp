import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.amber)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Time App'),
        backgroundColor: const Color.fromARGB(255, 167, 173, 178),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context,index){
          return ListTile(
          leading: Icon(Icons.list_alt),
          subtitle: Text('sdadadadgjfklgifpdok'),
          title: Text('Item $index'), 
          trailing: Icon(Icons.add),
          );
        }
      ),
    );
  }
}
