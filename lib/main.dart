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


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 //Obtendo variáveis via Get.put
 final controller = Get.put(Controller());  

  @override
  Widget build(BuildContext context) {
    
    return GetBuilder<Controller>(
      init: Controller(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(controller.title),
           // title: Text('${Get.find<Controller>().title}'),
          ),
          body: Center(
            
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Incrementando valor com GetX:',
                ),
                // Text('${Get.find<Controller>().valor}',style: Theme.of(context).textTheme.headlineMedium,),
                Text(
                  '${controller.valor}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
           // onPressed: () => Get.find<Controller>().incrementValor(),
            onPressed: () => controller.incrementValor(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      }
    );
  }
}
