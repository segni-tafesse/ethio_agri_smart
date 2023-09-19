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
