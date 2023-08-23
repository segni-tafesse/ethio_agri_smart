import 'package:ethio_agri_smart/details_screen.dart';
import 'package:ethio_agri_smart/model/crop_model.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

/*
Image.asset("images/apple")

*/
class _SearchPageState extends State<SearchPage> {
  late String appleImageUrl =
      "https://images.unsplash.com/photo-1630563451961-ac2ff27616ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGFwcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60";
  static List<CropModel> main_crops_list = [
    CropModel("Apple:Malus sylvestris",
        "https://images.unsplash.com/photo-1630563451961-ac2ff27616ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGFwcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
    CropModel("Avocado:Malus sylvestris",
        "https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
  ];

  List<CropModel> display_list = List.from(main_crops_list);
  void updateList(String value) {
    setState(() {
      display_list = main_crops_list
          .where((element) =>
              element.crop_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search for crops"),
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 20.0,
            // ),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Type here to Search...",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.purple.shade900,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.length == 0
                  ? Center(
                      child: Text(
                        "No Result found",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return DetailsScreen();
                            },
                          ));
                        },
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(8.0),
                              title: Text(
                                display_list[index].crop_title!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              leading: Image.network(
                                  display_list[index].crop_poster_url!),
                            ),
                            const Divider()
                          ],
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.amber,
    );
  }
}
