import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoPlayer1 extends StatefulWidget {
  @override
  _VideoPlayer1State createState() => _VideoPlayer1State();
}

class _VideoPlayer1State extends State<VideoPlayer1> {
  List<Video> videos = [
    Video(
      title: 'የአፕል ታሪክ How Apple plant entered Ethiopia',
      youtubeLink: 'https://www.youtube.com/watch?v=rovub2srR8g',
      posterUrl:
          'https://images.unsplash.com/photo-1589217157232-464b505b197f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8QXBwbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: '12 አስደናቂ የፖም ጥቅም | 12 Incredible Health Benefits of Apples',
      youtubeLink: 'https://www.youtube.com/watch?v=TtcYtxnpRS8',
      posterUrl:
          'https://images.unsplash.com/photo-1589217157232-464b505b197f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8QXBwbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title:
          'በየቀኑ አፕል ብትመገቡ ምን ይፈጠራል? የምታገኙት 8 አስደናቂ የጤና ጠቀሜታዎች| 8 Health benefits of eating apple every day',
      youtubeLink: 'https://www.youtube.com/watch?v=HsIc1AjJYLI',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1661766718556-13c2efac1388?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZG9jdG9yc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title:
          'How to grow an apple tree from seed _an easy step-by-step process _ Germinating apple seeds at home',
      youtubeLink: 'https://www.youtube.com/watch?v=epaXkdnjO8I&t=19s',
      posterUrl:
          'https://images.unsplash.com/photo-1576179635662-9d1983e97e1e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fEFwcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'How To Grow An Apple Tree From SEED to FRUIT 🍎! In 3 YEARS!!',
      youtubeLink: 'https://www.youtube.com/watch?v=1OqXRcguFsg&t=465s',
      posterUrl:
          'https://i.ytimg.com/vi/1OqXRcguFsg/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBjuVlvn4mQv7CcEB6TV--LeQ1F-g',
    ),
    Video(
      title: 'Apple Health Benefits _ 7 Things You Do Not Know',
      youtubeLink: 'https://www.youtube.com/watch?v=HUtDK2a60Do',
      posterUrl:
          'https://images.unsplash.com/photo-1603893776107-d658438f5cbd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmVuZWZpdHMlMjBvZiUyMGFwcGxlJTIwZnJ1aXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'How to Prune an Apple Tree!',
      youtubeLink: 'https://www.youtube.com/watch?v=LoCcC9Ll5nM',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1663013295543-0bce65d52446?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJ1bmluZyUyMG9mJTIwYXBwbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: '10 Common Apple Tree Diseases and How to Treat Them',
      youtubeLink: 'https://www.youtube.com/watch?v=739x1CDE3QE',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1663013295543-0bce65d52446?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJ1bmluZyUyMG9mJTIwYXBwbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'Codling moth -- How to keep the worms away organically',
      youtubeLink: 'https://www.youtube.com/watch?v=F_i_pnu3Lho&t=6s',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1663013295543-0bce65d52446?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJ1bmluZyUyMG9mJTIwYXBwbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title:
          'How to produce millions of Apple Tree - Apple Seedlings Production - Harvesting and processing Apple',
      youtubeLink: 'https://www.youtube.com/watch?v=syDRoJ1PdYI',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1663013295543-0bce65d52446?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJ1bmluZyUyMG9mJTIwYXBwbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'Bananas Are Not What You Think | The Shocking Truth',
      youtubeLink: 'https://www.youtube.com/watch?v=ex0URF-hWj4&t=2s',
      posterUrl:
          'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmFuYW5hfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'Diseases of Banana Plant',
      youtubeLink: 'https://www.youtube.com/watch?v=RNP53bSTGtc',
      posterUrl:
          'https://media.istockphoto.com/id/1464781421/photo/a-bunch-of-rotten-bananas-isolated-on-white-background.jpg?s=1024x1024&w=is&k=20&c=aQy0C9bV6A5Ayts4Yu13uGs3Evxcq-RaydgE9RD3KKI=',
    ),
    Video(
      title: 'How to Prune Banana Trees - Get Fast Growth and Large Bananas',
      youtubeLink: 'https://www.youtube.com/watch?v=a6DKcf3pdAg',
      posterUrl:
          'https://images.unsplash.com/photo-1523667864248-fc55f5bad7e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c2ljayUyMGJhbmFuYXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title:
          'Harvesting Bananas! Everything You Need To Know To Grow Your Own Fruit!',
      youtubeLink: 'https://www.youtube.com/watch?v=NsxLZUKm--s',
      posterUrl:
          'https://images.unsplash.com/photo-1523667864248-fc55f5bad7e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c2ljayUyMGJhbmFuYXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'HOW TO GROW BANANAS',
      youtubeLink: 'https://www.youtube.com/watch?v=1v0IuePhp04',
      posterUrl:
          'https://images.unsplash.com/photo-1523667864248-fc55f5bad7e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c2ljayUyMGJhbmFuYXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title:
          'If You Eat an Avocado a Day For a Month, Here\'s What Will Happen to You',
      youtubeLink: 'https://www.youtube.com/watch?v=2Cfl-aVbbz0',
      posterUrl:
          'https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'How to eat an Avocado: Nutrition Benefits, Tips & Preparation',
      youtubeLink: 'https://www.youtube.com/watch?v=QmfcXR-bXxw',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1672860633119-fc2ff8b7a537?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8QXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'The BEST Way To Grow Avocado From Seed | 0 - 5 Months of Growth',
      youtubeLink: 'https://www.youtube.com/watch?v=CL0IVzjmB_U',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1672860633119-fc2ff8b7a537?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8QXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'Avocado Tree Diseases and Pests | Management',
      youtubeLink: 'https://www.youtube.com/watch?v=cQxduuvdW8g',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1672860633119-fc2ff8b7a537?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8QXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title:
          'Avocado growers in Oromia Region are benefiting from using improved seeds - Ethiopia',
      youtubeLink: 'https://www.youtube.com/watch?v=q5KGkJINm5o',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1672860633119-fc2ff8b7a537?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8QXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title:
          'ሃስ አቮካዶ ማዳቀል | Hass Avocado Grafting and Seedling | Ethio-Agri Technology',
      youtubeLink: 'https://www.youtube.com/watch?v=jNXYeYnExiw',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1672860633119-fc2ff8b7a537?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8QXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'Dr Joe Schwarcz: The benefits of dates',
      youtubeLink: 'https://www.youtube.com/watch?v=NNMgD1A-tNs',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1672753749524-7553762bfb0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZGF0ZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title:
          'What Will Happen If You Start Eating 2 Dates Every Day for a Week',
      youtubeLink: 'https://www.youtube.com/watch?v=9_dcByPWUTU',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1672753749524-7553762bfb0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZGF0ZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'Growing a DATE PALM TREE Time-lapse',
      youtubeLink: 'https://www.youtube.com/watch?v=A4KrAhdCFlk',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1672753749524-7553762bfb0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZGF0ZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title:
          'Dates palm Harvesting by Shaking Machine - Packing Dates Modern Agricultural Technology',
      youtubeLink: 'https://www.youtube.com/watch?v=i8qpqiWc00g',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1672753749524-7553762bfb0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZGF0ZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'How to prune a Dwarf Date Palm (Phoenix Roebelenii)',
      youtubeLink: 'https://www.youtube.com/watch?v=RwFvRs3NDl4',
      posterUrl:
          'https://plus.unsplash.com/premium_photo-1672753749524-7553762bfb0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZGF0ZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title:
          'WHEAT Documentary: Everything You Ever Wanted to Know about Wheat',
      youtubeLink: 'https://www.youtube.com/watch?v=SJv8bHTq4mU',
      posterUrl:
          'https://images.unsplash.com/photo-1437252611977-07f74518abd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2hlYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'How to Grow Wheat | Seed to Harvest',
      youtubeLink: 'https://www.youtube.com/watch?v=AonJkhqCRwk',
      posterUrl:
          'https://images.unsplash.com/photo-1437252611977-07f74518abd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2hlYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'White Flour vs. Wheat Flour || Which One Is Healthy for You?',
      youtubeLink: 'https://www.youtube.com/watch?v=0bMnC3YU93w',
      posterUrl:
          'https://images.unsplash.com/photo-1437252611977-07f74518abd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2hlYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title: 'Ethiopia begins to export wheat in the Horn of Africa',
      youtubeLink: 'https://www.youtube.com/watch?v=SeOPVBhjrag',
      posterUrl:
          'https://images.unsplash.com/photo-1437252611977-07f74518abd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2hlYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
      title:
          'AFRICA should learn from the success of wheat Production in Ethiopia | One Africa, One Passport',
      youtubeLink: 'https://www.youtube.com/watch?v=nqQHxE17veI',
      posterUrl:
          'https://images.unsplash.com/photo-1437252611977-07f74518abd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2hlYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Video(
        title: 'What is Teff?',
        youtubeLink: 'https://www.youtube.com/watch?v=12ABB7JM66M',
        posterUrl:
            'https://images.unsplash.com/photo-1655226650825-e6e6ea13c929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dGVmZnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    Video(
        title: 'How Teff Is Made?',
        youtubeLink: 'https://www.youtube.com/watch?v=KbDRw9HaOZY',
        posterUrl:
            'https://images.unsplash.com/photo-1655226650825-e6e6ea13c929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dGVmZnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    Video(
        title: 'Teff Grass - 13 Days After Planting',
        youtubeLink: 'https://www.youtube.com/watch?v=ZbqITH9-8II',
        posterUrl:
            'https://images.unsplash.com/photo-1655226650825-e6e6ea13c929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dGVmZnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
  ];

  List<Video> filteredVideos = [];

  @override
  void initState() {
    super.initState();
    filteredVideos = List.from(videos);
  }

  void filterVideos(String query) {
    setState(() {
      filteredVideos = videos
          .where((video) =>
              video.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Future<void> openVideo(String youtubeLink) async {
    if (await canLaunch(youtubeLink)) {
      await launch(youtubeLink);
    } else {
      throw 'Could not launch $youtubeLink';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: filterVideos,
                decoration: InputDecoration(
                  hintText: 'Search videos...',
                  hintStyle: TextStyle(color: Colors.white54),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: filteredVideos.length,
        itemBuilder: (context, index) {
          final video = filteredVideos[index];
          return GestureDetector(
            onTap: () => openVideo(video.youtubeLink),
            child: GridTile(
              child: Image.network(
                video.posterUrl,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Icon(Icons.error);
                },
                fit: BoxFit.cover,
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                title: Text(
                  video.title,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Video {
  final String title;
  final String youtubeLink;
  final String posterUrl;

  Video({
    required this.title,
    required this.youtubeLink,
    required this.posterUrl,
  });
}
