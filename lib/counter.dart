import 'dart:async';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';

class home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:
      Center(child: Text('LOGINS'),),
      leading: Icon(Icons.person),),
      body: Center(child:Consumer<counter>(
        builder: (context,value,child)=>Text('${value.count}'),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<counter>(context,listen: false).incrimant();
        },child: Icon(Icons.add),
      ),
    );
  }
}

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(

      create: (BuildContext context) =>counter(),
      child: MaterialApp(
        home: home_button(),
      ));
  }
}
class counter with ChangeNotifier {
  int count=0;
  incrimant(){
    count++;
    notifyListeners();
  }
}



