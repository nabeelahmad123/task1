import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.height;
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: height / 10,
                  ),
                  Container(
                    height: height / 3.5,
                    width: width / 3,
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          'https://png.pngtree.com/png-vector/20190307/ourlarge/pngtree-gl-company-logo-vector-template-design-illustration-png-image_771710.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  _loginText("Login", width, height),
                  SizedBox(
                    height: height / 50,
                  ),
                  _textField("Email", width, height),
                  SizedBox(
                    height: height / 50,
                  ),
                  _textField("Password", width, height),
                  SizedBox(
                    height: height / 60,
                  ),
                  _forgotPassword("Forgot Password?", width, height),
                  _loginButton(width, height, "Login", context),
                  SizedBox(
                    height: height / 40,
                  ),
                  _registerButton(width, height, "Register", context),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _textField(hintText, width, height) {
    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,

          contentPadding: EdgeInsets.all(20.0),

          hintText: hintText, // pass the hint text parameter here
          hintStyle: TextStyle(color: Colors.black),
        ),
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _loginButton(width, height, text, context) {
    return Container(
        width: width * .75,
        height: height * .075,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: TextButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => SplashScreen()),
            // );
          },
          child: Text(text,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ));
  }

  Widget _registerButton(width, height, text, context) {
    return Container(
        width: width * .75,
        height: height * .075,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: TextButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => SplashScreen()),
            // );
          },
          child: Text(text,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ));
  }

  Widget _loginText(text, width, height) {
    return Center(
      child: Container(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _forgotPassword(text, width, height) {
    return Center(
      child: Container(
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
