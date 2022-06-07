import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String image;

  const BookTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: SizedBox(
        width: 40,
        height: 40,
        child: Image.network(
          image,
          width: 30,
          height: 30,
        ),
      ),
      onTap: () {},
    );
  }
}
