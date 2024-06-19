import 'package:flutter/material.dart';
import 'package:homepage/porto_model.dart';
import 'package:homepage/beranda.dart';

class ListHome extends StatelessWidget {
  const ListHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<PortoModel> porto = [
      PortoModel(name: 'Portofolio dari User', user: 'user'),
      PortoModel(name: 'Portofolio dari User', user: 'user'),
      PortoModel(name: 'Portofolio dari User', user: 'user'),
      PortoModel(name: 'Portofolio dari User', user: 'user'),
      PortoModel(name: 'Portofolio dari User', user: 'user'),
    ];
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: porto.length,
        itemBuilder: (context, index) => Beranda(porto: porto),
      ),
    );
  }
}
