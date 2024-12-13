import 'package:flutter/material.dart';

class Notifikasi extends StatelessWidget {
  const Notifikasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifikasi'),
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