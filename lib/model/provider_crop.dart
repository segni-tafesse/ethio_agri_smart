import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CropProvider extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;
  void nextPage() {
    _currentPage++;
    notifyListeners();
  }

  void previousPage() {
    _currentPage--;
    notifyListeners();
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => CropProvider(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: const CropPage(),
//       ),
//     );
//   }
// }

