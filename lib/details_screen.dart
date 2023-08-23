import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Center(
        child: Image(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj3WdD-zEumIC95q3rBp4IubqIIIn5Lt0VlA&usqp=CAU')),
      ),
    );
  }
}
