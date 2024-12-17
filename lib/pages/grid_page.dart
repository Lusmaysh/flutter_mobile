import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> data = <String> ["Agus","Budi","Chalie","Dodi","Elsa"];

    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman GridView"),
        backgroundColor: Colors.pink,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        padding: EdgeInsets.all(8),
        itemCount: data.length,
        itemBuilder: (context, index){
          return Container(
            child: Text(data[index]),
            color: Colors.blue,
          );
        }
      ),
    );
  }
}