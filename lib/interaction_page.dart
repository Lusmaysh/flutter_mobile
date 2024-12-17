import 'package:flutter/material.dart';
import 'package:flutter_hello/widget/spacing.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InteractionPage extends StatelessWidget {
  const InteractionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Interaction Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          const SpaceH10(),
          OutlinedButton(
            onPressed: () {
              final SnackBar tampil = SnackBar(
                content: const Text('Ini Data Di Snackbar'),
                action: SnackBarAction(label: 'Tutup', onPressed: () {}),
                duration: const Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(tampil);
            },
            child: const Text('Klik Snackbar'),
          ),
          const SpaceH10(),
          OutlinedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Title Dialog'),
                  content: const Text('Isi Konten Dari Dialog'),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Ok'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    )
                  ],
                ),
              );
            },
            child: const Text('Klik Dialog'),
          ),
          const SpaceH10(),
          OutlinedButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: 'Ini Adalah Toast',
                webPosition: 'center',
                webBgColor: '#808080',
                textColor: Colors.white,
              );
            },
            child: const Text('Klik Toast'),
          ),
        ],
      ),
    );
  }
}