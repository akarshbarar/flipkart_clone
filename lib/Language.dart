import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue[900],
          title: Text("Choose Language"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, i) {
                    return ListTile(
                      title: Text("hii"),
                    );
                  }),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.grey,
              child: Text("CONTINUE"),
            )
          ],
        ),
      ),
    );
  }
}
