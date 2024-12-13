import 'package:flutter/material.dart';

class Dashboard_protein extends StatelessWidget {
  const Dashboard_protein({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('dasboard_protein'),
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