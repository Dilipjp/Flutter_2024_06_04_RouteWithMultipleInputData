import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  labelText: 'Enter some text'
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              String input = _controller.text;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Secondscreen(data: input)));
            }, child: Text('take data'))
          ],
        ),
      ),
    );
  }
}

class Secondscreen extends StatelessWidget {
  final String data;

  Secondscreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Recived data : $data'),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
