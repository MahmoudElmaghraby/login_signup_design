import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ToDo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    FocusNode emailFocusNode = new FocusNode();
    FocusNode passFocusNode = new FocusNode();
    Color bgColor = Color.fromRGBO(65, 48, 76, 1);

    return new Scaffold(
      backgroundColor: Color.fromRGBO(32, 26, 48, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: screenHeight,
              height: screenHeight * 0.4,
            ),
            Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Please sign in to continue',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              padding: EdgeInsets.symmetric(
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                color: bgColor,
                border: Border.all(
                  color: bgColor,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TextField(
                focusNode: emailFocusNode,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: emailFocusNode.hasFocus ? Colors.white : Colors.grey,
                  ),
                  icon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              padding: EdgeInsets.symmetric(
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                color: bgColor,
                border: Border.all(
                  color: bgColor,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TextField(
                focusNode: passFocusNode,
                style: TextStyle(color: Colors.white),
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: passFocusNode.hasFocus ? Colors.white : Colors.grey,
                  ),
                  icon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 80,
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(13, 245, 227, 1),
                border: Border.all(
                  color: Color.fromRGBO(13, 245, 227, 1),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(70),
                ),
              ),
              child: FlatButton(
                onPressed: null,
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Center(
              child: Text(
                'Forget Password',
                style: TextStyle(
                  color: Color.fromRGBO(13, 245, 227, 1),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 80.0,
                child: Row(
                  children: [
                    Text(
                      'Don\'t have an account?  ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color.fromRGBO(13, 245, 227, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
