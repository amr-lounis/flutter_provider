import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bloc/CounterProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: MaterialApp(home: MyHomePage())
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(),
      body:widgetBody(context),
    );
  }
  widgetAppBar(){
    return AppBar();
  }
  widgetBody(BuildContext context){
    return Center(
      child: Column(
        children: <Widget>[
          Text('${context.watch<CounterProvider>().count}'),
          RaisedButton(
            onPressed: () => context.read<CounterProvider>().increment(),
          ),
        ],
      ),
    );
  }}
