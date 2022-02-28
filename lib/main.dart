import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyLoginPage(title: 'Login Screen'),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {

  @override
  Widget build(BuildContext context) {
    final flutterLogo = FlutterLogo();

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(25, 15, 25, 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(25, 15, 25, 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );

    final logButton = ElevatedButton(
      onPressed: () {},
      child: Text(
        'Log In',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(450, 45)
      ),
    );

    final forgotLabel = TextButton(
      onPressed: () {},
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    );

    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title)
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            flutterLogo,
            SizedBox(height: 50),
            email,
            SizedBox(height: 10),
            password,
            SizedBox(height: 20),
            logButton,
            forgotLabel
          ],
        ),
      ),
    );

  }
}