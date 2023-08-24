import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/provider_crop.dart';

class CropPage extends StatefulWidget {
  const CropPage({Key? key}) : super(key: key);
  @override
  State<CropPage> createState() => _CropPageState();
}

class _CropPageState extends State<CropPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Crop Page ${Provider.of<CropProvider>(context).currentPage}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is crop page ${Provider.of<CropProvider>(context).currentPage}',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<CropProvider>(context, listen: false).nextPage();
              },
              child: Text('Next Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<CropProvider>(context, listen: false)
                    .previousPage();
              },
              child: Text('Previous Page'),
            ),
          ],
        ),
      ),
    );
  }
}
