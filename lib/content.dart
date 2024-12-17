import 'package:flutter/material.dart';

class CardContentSection extends StatelessWidget {
  const CardContentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 80,
              color: Colors.blueGrey,
              margin: const EdgeInsets.only(right: 10),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("JUDUL"),
                Text("DESKRIPSI"),
              ],
            ),
          ],
        ),
        const Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.purple,
                  size: 24,
                ),
                Icon(
                  Icons.star,
                  color: Colors.purple,
                  size: 24,
                ),
                Icon(
                  Icons.star,
                  color: Colors.purple,
                  size: 24,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
