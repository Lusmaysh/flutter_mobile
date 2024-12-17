import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> data = <String> ["Agus","Budi","Chalie","Dodi","Elsa"];

    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman ListView"),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              title: Text(data[index]),
              trailing: Icon(Icons.more_vert),
              subtitle: Text("ini adalah data ${data[index]}"),
            ),
          );
        }
      ),
    );
  }
}