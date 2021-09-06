import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  Future<HashMap<String, String>> getData() async {
    var data =
        await http.get(Uri.parse("http://192.168.29.14:3000/getItemList"));
    print(data.body);
    return json.decode(data.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                hintText: "Search for Products, Brands and More",
                icon: Icon(Icons.search)),
          ),
          Expanded(
              flex: 1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 100,
                  itemBuilder: (context, i) {
                    return CircleAvatar(
                      child: FlutterLogo(),
                    );
                  })),
          Expanded(
              flex: 9,
              child: FutureBuilder<HashMap<String, String>>(
                future: getData(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }
                  if (snapshot.hasError) {
                    return Center(
                      child: Text("ERRO"),
                    );
                  }
                  if (snapshot.hasData) {
                    return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: snapshot.data!.length),
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  FlutterLogo(),
                                  Text(snapshot.toString())
                                ],
                              ),
                            ),
                          );
                        });
                  } else {
                    return Text("Hii");
                  }
                },
              ))
        ],
      ),
    );
  }
}
