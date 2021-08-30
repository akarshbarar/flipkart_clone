import 'package:flipkart/Pages/shop.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  var tabs = <Widget>[
    Shop(),
    Center(
      child: Text("Supercoin"),
    ),
    Center(
      child: Text("lll"),
    ),
    Center(
      child: Text("Video"),
    ),
    Center(
      child: Text("Quick"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Flipkart"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_basket))
        ],
      ),
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        selectedItemColor: Colors.blue[900],
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(label: "Shop", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Supercoins", icon: Icon(Icons.charging_station)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.circle)),
          BottomNavigationBarItem(label: "Video", icon: Icon(Icons.add)),
          BottomNavigationBarItem(
              label: "quick", icon: Icon(Icons.ac_unit_outlined))
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          ListTile(
            tileColor: Colors.blue,
            leading: Icon(Icons.home),
            title: Text("Home"),
            trailing: FlutterLogo(),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("Flipkart Plis Zone"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("All Categories"),
          )
        ],
      )),
    ));
  }
}
