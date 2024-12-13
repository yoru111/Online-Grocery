import 'package:flutter/material.dart';

class Dasboard_forzen_food extends StatelessWidget {
  const Dasboard_forzen_food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('dashboard_frozen_food'),
      ),
      body: Center(child: ElevatedButton(child: const Text('kembali'),
      onPressed: (){
        Navigator.pop(context);
      },
      )
      ),
    );
  }
}