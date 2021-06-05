import 'package:fabexdateformatter/fabexdateformatter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fabexdateformatter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FabexFormatter fabexFormatter = FabexFormatter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fabex Date Formatter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("10th month is ${fabexFormatter.getMonthName(10)}"),
            Text("Previous month is ${fabexFormatter.getPreviousMonthNum(6)}"),
            Text(
                "String Date TIme is ${fabexFormatter.dateTimeToStringDate(DateTime.now())}")
          ],
        ),
      ),
    );
  }
}
