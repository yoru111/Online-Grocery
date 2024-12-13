import 'package:flutter/material.dart';

class Dasboard_buah extends StatelessWidget {
  const Dasboard_buah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('dasboard_buah'),
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