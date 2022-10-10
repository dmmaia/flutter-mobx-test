import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_test/controller.dart';

class MyHomePage extends StatelessWidget {
  final controller = Controller();

  MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MobX Test'),
      ),
      body: Center(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Nome'),
              onChanged: controller.changeName,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Sobrenome'),
              onChanged: controller.changeSurname,
            ),
            const SizedBox(height: 20),
            Observer(builder: (_) {
              return Text(controller.completeName);
            })
          ],
        ),
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
