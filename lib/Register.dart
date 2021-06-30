import "package:flutter/material.dart";

class Register extends StatelessWidget {
  const Register({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.height;
    TextEditingController email = new TextEditingController();
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: _backButton(width, height),
                      ),
                    ],
                  ),
                  _welcomeText("Welcome To Veritable Notary"),
                  SizedBox(
                    height: height / 90,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _letsStartText(),
                    ],
                  ),
                  _textField(width, height, email, "Name*", "Name"),
                  _textField(width, height, email, "Email*", "Email"),
                  _textField(width, height, email, "Password*", "Password"),
                  _textField(width, height, email, "Confirm Password*",
                      "Confirm Password"),
                  SizedBox(
                    height: height / 50,
                  ),
                  _registerButton(width, height, "Submit", context),
                ],
              ),
            ),
          )),
    );
  }

  Widget _registerButton(width, height, text, context) {
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

  Widget _welcomeText(
    text,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Container(
          child: Text(
            text,
            maxLines: 2,
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

Widget _letsStartText() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        child: Text(
          "Lets start by getting your account setup",
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal),
        ),
      ),
    ),
  );
}

Widget _backButton(width, height) {
  return Container(
    height: height / 10,
    width: width / 10,
    child: CircleAvatar(
      child: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
    ),
  );
}

Widget _textField(width, height, email, text, hint) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ],
        ),
        Container(
          width: width * 0.9,
          height: height * 0.075,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white,
          ),
          child: TextFormField(
            controller: email,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(20.0),
              hintText: hint,
              hintStyle: TextStyle(fontSize: 14.0, color: Colors.black),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ],
    ),
  );
}
