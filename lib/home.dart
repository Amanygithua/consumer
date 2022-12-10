import 'main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.dart';
class home_button extends StatelessWidget {
  const home_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home2()));
        },child:Text('LOGIN'),
      )),
    );
  }
}

