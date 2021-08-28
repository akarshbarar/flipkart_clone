import 'package:flipkart/UTILS/languageTitleEnum.dart';
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

LanguageTitleEnum? _languageTitleEnum = LanguageTitleEnum.English;

class _LanguageState extends State<Language> {
  String lang = "";
  var list = [
    "Hindi",
    "Punjabi",
    "Assamese",
    "Telgu",
    "Tamil",
    "Bengali",
    "Marathi",
    "Kannada",
    "Odia",
    "Gujrati",
    "Malyalam",
    "English"
  ];
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
                  itemCount: 12,
                  itemBuilder: (context, i) {
                    return languageTile(context, i);
                  }),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/login");
                    },
                    color: lang.length == 0 ? Colors.grey : Colors.orange,
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget languageTile(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Radio(
              value: list[index],
              groupValue: lang,
              onChanged: (String? value) {
                setState(() {
                  lang = value!;
                });
              },
            ),
            Text(list[index]),
            Icon(Icons.access_alarm)
          ],
        ),
      ),
    );
  }
}
