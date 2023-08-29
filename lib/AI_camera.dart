import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('capturing image'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 640,
              height: 480,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(width: 8, color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'image should appear here',
                style: TextStyle(fontSize: 26),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('capture image',
                        style: TextStyle(fontSize: 10)),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('select image',
                        style: TextStyle(fontSize: 10)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
