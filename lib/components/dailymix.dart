import 'package:flutter/material.dart';

class Dailymix extends StatelessWidget {
  final String genre_name;
  final String imagelink;

  const Dailymix({
    Key? key,
    required this.genre_name,
    required this.imagelink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.linearToSrgbGamma(),
            image: NetworkImage(imagelink),
            fit: BoxFit.cover),
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          genre_name,
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
