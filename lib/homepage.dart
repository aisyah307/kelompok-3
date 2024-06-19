import 'package:flutter/material.dart';
import 'package:homepage/following.dart';
import 'package:homepage/porto_model.dart';
import 'package:homepage/beranda.dart';
import 'package:homepage/profile.dart';
import 'package:homepage/tambah_porto.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List<PortoModel> porto = [
      PortoModel(name: 'Portofolio dari User', user: 'user'),
      PortoModel(name: 'Portofolio dari User', user: 'user'),
      PortoModel(name: 'Portofolio dari User', user: 'user'),
      PortoModel(name: 'Portofolio dari User', user: 'user'),
      PortoModel(name: 'Portofolio dari User', user: 'user'),
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Beranda'),
              Tab(text: 'Following'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Beranda(porto: porto),
            Following(porto: porto),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              SizedBox(width: 40), // memberikan ruang untuk FAB
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(porto: porto[0]),
                      ));
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // navigasi button add
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TambahPorto(porto: porto[0])),
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
