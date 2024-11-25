import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/controler.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<HomeController>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('provider title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<HomeController>(
              builder:(BuildContext context, value,Widget? child ){
              print("provider");
              return Column(
                children: [
                  Text("${provider.count}"),
                  ElevatedButton(onPressed: provider.dec, child: Icon(Icons.minimize)),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: provider.reg, child: Icon(Icons.abc)),
                ],
              );
              },
              ),
              Text("press"),
          ],
           
          ),
          
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: provider.add,
          child: Icon(Icons.add),
        ),
    );
    
  }
}