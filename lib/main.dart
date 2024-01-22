import 'package:flutter/material.dart';
//1 -> controller - controller_getx | comando terminal instalar o package GetX:  flutter pub add get
import 'package:get/get.dart';
import 'package:increment_getx/controller/controller_getx.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App increment com GetX',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
//3 -> |
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  //final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return GetBuilder<Controller>(
      init: Controller(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            
            title: Text(_.title),
          ),
          body: Center(
            
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Incrementando valor com GetX:',
                ),
                Text(
                  '${_.valor}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _.incrementValor(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      }
    );
  }
}
