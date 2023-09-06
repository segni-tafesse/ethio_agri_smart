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
        "African lily: Agapanthus ",
        "https://images.unsplash.com/photo-1553126459-51816d8c44e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fEFmcmljYW4lMjBsaWx5fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'African_lily.md'),
    CropModel(
        "African violet: Saintpaulia spp ",
        "https://images.unsplash.com/photo-1645286975285-61e710b35a87?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8QWZyaWNhbiUyMHZpb2xldHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'African violet'),
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
        "Barriers: Fragaria ananassa",
        "https://images.unsplash.com/photo-1486328228599-85db4443971f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y2FiYmFnZSUyMGltYWdlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Barriers.md'),
    CropModel(
        "Beans: Phaseolus vulgaris ",
        "https://plus.unsplash.com/premium_photo-1666976504656-75eca1e9aaf5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGJlcnJpZXJzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Beans.md'),
    CropModel(
        "Bell  peppers: Capsicum annuum ",
        "https://images.unsplash.com/photo-1621953723422-6023013f659d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVsbCUyMHBlcHBlcnN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Bell_peppers.md'),
    CropModel(
        "Broccoli: Brassica oleracea ",
        "https://images.unsplash.com/photo-1594885270039-f8871b502f7f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGJyb2Njb2xpfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Broccoli.md'),
    CropModel(
        "Cabbage:Hordeum vulgare",
        "https://images.unsplash.com/photo-1486328228599-85db4443971f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y2FiYmFnZSUyMGltYWdlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Barley.md'),
    CropModel("Carrot:Daucus carota",
        "https://cdn.wallpapersafari.com/23/6/3dkWMI.jpg", 'Carrot.md'),
    CropModel(
        "Cauliflower: Brassica oleracea var. botrytis",
        "https://images.unsplash.com/photo-1510627498534-cf7e9002facc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2F1bGlmbG93ZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        ' Cauliflower.md'),
    CropModel(
        "Cotton: BGossypium hirsutum  or Gossypium barbadense",
        "https://images.unsplash.com/photo-1510627498534-cf7e9002facc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2F1bGlmbG93ZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Cotton.md'),
    CropModel(
        "Dates:Phoenix Dactylifera",
        "https://images.unsplash.com/photo-1634337781106-4c6a12b820a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNvdHRvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Dates.md'),
    CropModel(
        "EarthPea:Tuberous Pea",
        "https://climate.nasa.gov/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdVltIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--bb8cadb7590090195eb1a8b6dd5175027db68424/pea-earth-536px-95.jpg",
        'Earth-Pea.md'),
    CropModel(
        "Eggplant: Solanum melongena",
        "https://images.unsplash.com/photo-1613881553903-4543f5f2cac9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGVnZ3BsYW50fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Eggplant.md'),
    CropModel(
        "Ethiopian Banana: Ensete ventricosum",
        "https://images.unsplash.com/photo-1593280443077-ae46e0100ad1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fEJBTkFOQXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Ethiopian_Banana.md'),
    CropModel(
        "Ethiopia mustard: Brassica carinata ",
        "https://images.unsplash.com/photo-1578129377420-4795675e892e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bXVzdGFyZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Ethiopia_mustard.md'),
    CropModel(
        "Ethiopia peppers: Aframomum corrorima",
        "https://images.unsplash.com/photo-1602062083396-750ace19e226?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8UEVQUEVSU3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Ethiopian_Peppers.md'),
    CropModel(
        "Ethiopia rosewood: Dalbergia melanoxylon",
        "https://images.unsplash.com/photo-1602062083396-750ace19e226?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8UEVQUEVSU3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Ethiopian_rose_wood.md'),
    CropModel("Grape:Vitis Vinifera L.",
        "https://images4.alphacoders.com/884/884560.jpg", 'Grapes.md'),
    CropModel(
        "Green peppers: Capsicum annuum",
        "https://images.unsplash.com/photo-1576181235989-714125739ed7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGdyZWVuJTIwcGVwcGVyc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Green_peppers.md'),
    CropModel(
        "Guavas:  Psidium guajava",
        "https://images.unsplash.com/photo-1629367308496-a2496ba22f88?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Z3VhdmFzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Guavas.md'),
    CropModel(
        "Kale:   Brassica oleracea var. sabellica",
        "https://images.unsplash.com/photo-1622943495354-f49d2964094c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8a2FsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Kale.md'),
    CropModel(
        "Legumes:  Chickpea, Garbanzo bean ",
        "https://images.unsplash.com/photo-1564894809611-1742fc40ed80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVndW1lc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Legumes.md'),
    CropModel(
        "Lemon:Citrus Limon",
        "https://images.unsplash.com/photo-1568569350062-ebfa3cb195df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGxlbW9ufGVufDB8fDB8fHww&w=1000&q=80",
        'Lemon.md'),
    CropModel(
        "Lettuce:  Lactuca sativa",
        "https://images.unsplash.com/photo-1515356956468-873dd257f911?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bGV0dHVjZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Lttuce.md'),
    CropModel(
        "Limes:   Citrus aurantifolia",
        "https://images.unsplash.com/photo-1578855691621-8a08ea00d1fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGltZXMlNUN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Limes.md'),
    CropModel("Maize:Zea mays", "https://wallpapercave.com/wp/wp2570209.jpg",
        'Maize.md'),
    CropModel(
        "Mandarin:  Kid glove oranges, loose-skin oranges, tangerine oranges, tangerines",
        "https://images.unsplash.com/photo-1603638925702-37e1936b6d19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFuZGFyaW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Mandarin.md'),
    CropModel(
        "Mango:Mangifera Indica",
        "https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Mango.md'),
    CropModel(
        "Millet:Pennisetum glaucom",
        "https://media.istockphoto.com/id/1480315434/photo/millet-or-sorghum-an-important-cereal-crop-in-field.webp?b=1&s=170667a&w=0&k=20&c=O_kCbAp6ow7i7RrTwKKjatkmDHZCR2UyL1MWaNPSbKI=",
        'Millet.md'),
    CropModel(
        "Mushrooms: Agaricus spp",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_Cy-AJpX0fNbrLyD1e4VDO-RmbnA6HzrVMA&usqp=CAU",
        'Mushrooms.md'),
    CropModel(
        "Oilpalm:Elaeis Guineensis",
        "https://images.squarespace-cdn.com/content/v1/5e14f5138c826a2d6387038e/1595994935871-QFIGQSMHF70JBM26C7ZD/63074437_l_edited_v2.jpg",
        'Oil_palm.md'),
    CropModel(
        "Oil seed:  Helianthus annuus ",
        "https://plus.unsplash.com/premium_photo-1683547021445-21d157e96d7a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8b2lsJTIwc2VlZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Oil_seed.md'),
    CropModel(
        "Okra:  Abelmoschus esculentus",
        "https://images.unsplash.com/photo-1632742315671-d77e6feed874?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG9rcmF8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Okra.md'),
    CropModel(
        "Onion:Allium cepa",
        "https://media.istockphoto.com/id/182501139/photo/red-onion.jpg?s=612x612&w=0&k=20&c=7Lb6xfyhxDabRgoPTkBmQkImNRsKdbAJ2bdWsKWcq5M=",
        'Onion.md'),
    CropModel(
        "Orange:Citrus x sinensis",
        "https://i.pinimg.com/originals/54/30/b3/5430b3f6290a4bfc483eafc3bba2d4b5.png",
        'Orange.md'),
    CropModel(
        "Papaya:  Carica papaya",
        "https://images.unsplash.com/photo-1581242335635-ce8631489ac5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGFwYXlhfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Papaya.md'),
    CropModel(
        "Peaches:  Prunus persica",
        "https://images.unsplash.com/photo-1634021607990-e3c98ff1e76d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlYWNoZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Peaches.md'),
    CropModel(
        "Peas:    Pisum sativum",
        "https://images.unsplash.com/photo-1590685006710-2b478c69b26b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVhc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Pear.md'),
    CropModel(
        "Pine apple:   Ananas comosus",
        "https://images.unsplash.com/photo-1512578101635-3d8804b016c2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGluZSUyMGFwcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Pine_apple.md'),
    CropModel("Potato:Solanum tuberosum",
        "https://images7.alphacoders.com/376/376174.jpg", 'potato.md'),
    CropModel(
        "Pulse:   Phaseolus vulgaris",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrTdKOf6KqvhNVZF4DGaTUN3Xms1BgCkffXA&usqp=CAU",
        'Pulse.md'),
    CropModel(
        "Pumpkin:   Cucurbita pepo",
        "https://images.unsplash.com/photo-1566220036246-08bc2fc902a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHVtcGtpbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Pumpkin.md'),
    CropModel(
        "Radish:  Raphanus sativus ",
        "https://images.unsplash.com/photo-1593026122758-19bebc625104?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmFkaXNofGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Radish.md'),
    CropModel(
        "Red  peppers: Capsicum annuum ",
        "https://images.unsplash.com/photo-1566045023256-fb2339a82526?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHJlZCUyMHBlcHBlcnN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Red_peppers.md'),
    CropModel(
        "Rice:Orzya Sativa",
        "https://w0.peakpx.com/wallpaper/800/691/HD-wallpaper-summer-growing-rice-plant-graphy-closeup.jpg",
        'Rice.md'),
    CropModel(
        "Rose:Rosa rubiginosa",
        "https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Rose.md'),
    CropModel(
        "Sorghum:Sorghum bicolor(L.)Moench",
        "https://media.istockphoto.com/id/179072932/photo/close-up-of-sorghum-in-morning-sun-light.jpg?s=612x612&w=0&k=20&c=IIYcKWtokaVXlfNqJekS4_R6wHKiBpoo1rqHLGLrZ_M=",
        'Sorghum.md'),
    CropModel(
        "Spinach: Spinacia oleracea",
        "https://images.unsplash.com/photo-1576045057995-568f588f82fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3BpbmFjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Spinach.md'),
    CropModel(
        "Sugar cane: Saccharum officinarum",
        "https://media.istockphoto.com/id/965303384/photo/the-sugar-cane.webp?b=1&s=170667a&w=0&k=20&c=yRcBuHSqaSyGvXAEyzuwDYGghvmjqDEV9c0A_6hCvcc=",
        'Sugaracane.md'),
    CropModel(
        "Sun-Flower:Carthamus tinctorius",
        "https://i.pinimg.com/736x/54/a4/22/54a4221459e9ea656250d17e0453c7ac--sunflowers-bipolar.jpg",
        'sunflower.md'),
    CropModel(
        "Sweet potatoes: Ipomoea batatas",
        "https://images.unsplash.com/photo-1580324613766-3b5d415bb34a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c3dlZXQlMjBwb3RhdG9lc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'sweet_potatoes.md'),
    CropModel(
        "Swiss chard: ",
        "https://plus.unsplash.com/premium_photo-1666270423761-b39aeb537ea7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3dpc3MlMjBjaGFyZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'sweet_potatoes.md'),
    CropModel(
        "Tea:Camellia sinensis",
        "https://c4.wallpaperflare.com/wallpaper/465/306/506/fresh-green-tea-leaves-sunlight-wallpaper-preview.jpg",
        'Tea.md'),
    CropModel(
        "Tomato:Solanum lycopersicum",
        "https://free4kwallpapers.com/uploads/originals/2015/05/06/tomato-bowl.jpg",
        'Tomato.md'),
    CropModel(
        "Wheat:Triticum",
        "https://w0.peakpx.com/wallpaper/788/251/HD-wallpaper-wheat-crop-green-nature-view.jpg",
        'Wheat.md'),
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
                      //itemCount: 3,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return MarkDownPage(
                                title: display_list[index].crop_title,
                                mdName:
                                    display_list[index].mdPath ?? 'default.md',
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
