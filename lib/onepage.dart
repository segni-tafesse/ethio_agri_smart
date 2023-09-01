import 'package:ethio_agri_smart/MarkDownPage.dart';
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
  static List<CropModel> main_crops_list = [
    CropModel(
        "Apple:Malus sylvestris",
        "https://w0.peakpx.com/wallpaper/209/667/HD-wallpaper-fruits-apple-fruit-black-food.jpg",
        'apple.md'),
    CropModel(
        "Avocado:Persea Americana",
        "https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'avocado.md'),
    CropModel(
        "Banana:Musa acuminata",
        "https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFuYW5hfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Banana.md'),
    CropModel(
        "Cabbage:Hordeum vulgare",
        "https://images.unsplash.com/photo-1486328228599-85db4443971f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y2FiYmFnZSUyMGltYWdlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Barley.md'),
    CropModel("Carrot:Daucus carota",
        "https://cdn.wallpapersafari.com/23/6/3dkWMI.jpg", 'Carrot.md'),
    CropModel(
        "Dates:Phoenix Dactylifera",
        "https://wallpapers.com/images/featured/dates-zb3wqvd7fm33auzq.jpg",
        'Dates.md'),
    CropModel(
        "EarthPea:Tuberous Pea",
        "https://climate.nasa.gov/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdVltIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--bb8cadb7590090195eb1a8b6dd5175027db68424/pea-earth-536px-95.jpg",
        'Earth-Pea.md'),
    CropModel("Grape:Vitis Vinifera L.",
        "https://images4.alphacoders.com/884/884560.jpg", 'Grapes.md'),
    CropModel(
        "Lemon:Citrus Limon",
        "https://images.unsplash.com/photo-1568569350062-ebfa3cb195df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGxlbW9ufGVufDB8fDB8fHww&w=1000&q=80",
        'Lemon.md'),
    CropModel.withoutMd(
        "Maize:Zea mays", "https://wallpapercave.com/wp/wp2570209.jpg"),
    CropModel.withoutMd("Mango:Mangifera Indica",
        "https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
    CropModel.withoutMd("Millet:Pennisetum glaucom",
        "https://media.istockphoto.com/id/1480315434/photo/millet-or-sorghum-an-important-cereal-crop-in-field.webp?b=1&s=170667a&w=0&k=20&c=O_kCbAp6ow7i7RrTwKKjatkmDHZCR2UyL1MWaNPSbKI="),
    CropModel.withoutMd("Oilpalm:Elaeis Guineensis",
        "https://images.squarespace-cdn.com/content/v1/5e14f5138c826a2d6387038e/1595994935871-QFIGQSMHF70JBM26C7ZD/63074437_l_edited_v2.jpg"),
    CropModel.withoutMd("Onion:Allium Cepa",
        "https://media.istockphoto.com/id/182501139/photo/red-onion.jpg?s=612x612&w=0&k=20&c=7Lb6xfyhxDabRgoPTkBmQkImNRsKdbAJ2bdWsKWcq5M="),
    CropModel.withoutMd("Orange:Citrus x sinensis",
        "https://i.pinimg.com/originals/54/30/b3/5430b3f6290a4bfc483eafc3bba2d4b5.png"),
    CropModel.withoutMd("Potato:Solanum tuberosum",
        "https://images7.alphacoders.com/376/376174.jpg"),
    CropModel.withoutMd("Rice:Orzya Sativa",
        "https://w0.peakpx.com/wallpaper/800/691/HD-wallpaper-summer-growing-rice-plant-graphy-closeup.jpg"),
    CropModel.withoutMd("Rose:Rosa rubiginosa",
        "https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
    CropModel.withoutMd("Sun-Flower:Carthamus tinctorius",
        "https://i.pinimg.com/736x/54/a4/22/54a4221459e9ea656250d17e0453c7ac--sunflowers-bipolar.jpg"),
    CropModel.withoutMd("Sorghum:Sorghum bicolor(L.)Moench",
        "https://media.istockphoto.com/id/179072932/photo/close-up-of-sorghum-in-morning-sun-light.jpg?s=612x612&w=0&k=20&c=IIYcKWtokaVXlfNqJekS4_R6wHKiBpoo1rqHLGLrZ_M="),
    CropModel.withoutMd("Tea:Camellia sinensis",
        "https://c4.wallpaperflare.com/wallpaper/465/306/506/fresh-green-tea-leaves-sunlight-wallpaper-preview.jpg"),
    CropModel.withoutMd("Tomato:Solanum lycopersicum",
        "https://free4kwallpapers.com/uploads/originals/2015/05/06/tomato-bowl.jpg"),
    CropModel.withoutMd("Wheat:Triticum",
        "https://w0.peakpx.com/wallpaper/788/251/HD-wallpaper-wheat-crop-green-nature-view.jpg"),
    CropModel.withoutMd("Yam:Dioscorea",
        "https://www.shutterstock.com/shutterstock/videos/1072230053/thumb/1.jpg?ip=x480"),
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
        actions: [
          IconButton(icon: Icon(Icons.more_vert_outlined), onPressed: () {}),
        ],
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
              style: TextStyle(color: Colors.black),
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
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.isEmpty
                  ? const Center(
                      child: Text(
                        "No Result found",
                        style: TextStyle(
                          color: Colors.black,
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
                              return MarkDownPage(
                                //mdName: 'apple.md',
                                mdName:
                                    display_list[index].mdPath ?? 'default.md',
                                title: display_list[index].crop_title,
                              );
                            },
                          ));
                        },
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(8.0),
                              title: Text(
                                display_list[index].crop_title!,
                                style: const TextStyle(
                                  color: Colors.black,
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
      backgroundColor: Colors.white,
    );
  }
}
