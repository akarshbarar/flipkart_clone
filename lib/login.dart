import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: Icon(Icons.close),
            backgroundColor: Colors.blue[900],
            title: Text("Flipkart"),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login for better experience",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Enter your phone number to continue"),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Phone Number",
                              labelStyle: TextStyle(color: Colors.blue[900]),
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                            "By contining, you agree to Flipkarts terms and conditions")
                      ],
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                          },
                          color: Colors.grey,
                          child: Text(
                            "CONTINUE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
