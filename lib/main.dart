import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),

      // initialRoute: '/',
      // routes: {
      //   '/': (context) => FirstScreen(),
      //   '/second': (context) => SecondScreen(),
      // },

    );
  }
}

class FirstScreen extends StatelessWidget {

  // final TextEditingController _controller = TextEditingController();
  // final TextEditingController _controller2 = TextEditingController();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),

     body: Center(
       child: Column(
         children: [
           TextField(
             controller: _loginController,
               decoration: InputDecoration(
                 labelText: 'Enter name: '
               ),
           ),
           TextField(
             controller: _passwordController,
             decoration: InputDecoration(
                 labelText: 'Enter password: '
             ),
           ),
           ElevatedButton(
               onPressed: (){
                 String login = _loginController.text;
                 String password = _passwordController.text;
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => SecondScreen(Login:login,Password:password))
                 );

                 // Navigator.pushNamed(context, 'second',arguments: {'Plogin':login,'Ppassword':password});
               },
               child: Text('Go'))
         ],
       ),
     ),

    );
  }
}

class SecondScreen extends StatelessWidget {
  final String Login;
  final String Password;
 const SecondScreen({required this.Login, required this.Password});
 @override
  Widget build(BuildContext context) {
   // inal args = ModalRoute.of(context)?.settings.arguments as Map<>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
      child: Column(
        children: [
          Text('login + $Login'),
          Text('pwd + $Password'),
        ],
      ),
      ),
    );
  }
}
