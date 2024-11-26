import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mental Health suggestion'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Article'),
              Tab(text: 'YouTube'),
              Tab(text: 'Games'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Article Tab with local assets and clickable links
            ArticleTab(),
            // Placeholder content for YouTube and Games tabs
            YouTubeTab(),
            GamesTab(),
          ],
        ),
      ),
    );
  }
}

class ArticleTab extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'What is mental health',
      imageUrl: 'Asset/loginimage.jpeg', // Local image asset
      url: Uri.parse('https://www.medicalnewstoday.com/articles/154543'),
    ),
    Article(
      title: 'Why should you care about mental health?',
      imageUrl: 'Asset/Mental_health_2.jpg', // Local image asset
      url: Uri.parse('https://doctorondemand.com/blog/mental-health/why-its-important-to-care-for-your-mental-health/#:~:text=Why%20is%20mental%20health%20important,like%20work%2C%20school%20or%20caregiving.'),
    ),
    Article(
      title: 'Ways to take care of your',
      imageUrl: 'Asset/Mental_health_3.jpg', // Local image asset
      url: Uri.parse('https://www.who.int/westernpacific/about/how-we-work/pacific-support/news/detail/07-10-2021-6-ways-to-take-care-of-your-mental-health-and-well-being-this-world-mental-health-day'),
    ),
    Article(
      title: 'Transforming the understanding and treatment of mental illnesses.',
      imageUrl: 'Asset/Mental_health_2.jpg', // Local image asset
      url: Uri.parse('https://www.nimh.nih.gov/'),
    ),
    Article(
      title: 'Mental illness symptoms and causes',
      imageUrl: 'Asset/Mental_health_4.jpg', // Local image asset
      url: Uri.parse('https://www.mayoclinic.org/diseases-conditions/mental-illness/symptoms-causes/syc-20374968'),
    ),
    Article(
      title: 'Importance of Mental Health Awareness',
      imageUrl: 'Asset/Mental_health_3.jpg', // Local image asset
      url: Uri.parse('https://www.pinerest.org/newsroom/articles/mental-health-awareness-blog/'),
    ),
    // Add more articles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return Card(
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    // Using local image assets with error handling
                    Image.asset(
                      article.imageUrl,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 100,
                          height: 100,
                          color: Colors.grey,
                          child: Icon(Icons.error, color: Colors.red),
                        );
                      },
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            article.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () => _launchURL(context, article.url), // Open URL with context
                            child: Text(
                              'Read more',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  // Function to open a URL in the external browser with error handling and BuildContext
  void _launchURL(BuildContext context, Uri url) async {
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(
            url
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not launch URL: $url')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }
}

class YouTubeTab extends StatefulWidget {
  @override
  _YouTubeTabState createState() => _YouTubeTabState();
}

class _YouTubeTabState extends State<YouTubeTab> {
  final List<String> videoUrls = [
    'https://youtu.be/rkZl2gsLUp4?si=em5oX3xMn0zzbnvR',
    'https://youtu.be/j0_0O-FmLtc?si=qqnh9C4VEyH9Cyoz',
    'https://youtu.be/wOGqlVqyvCM?si=cIvcOTGx4buH-y5m',
    'https://youtu.be/5bNI_NloNa8?si=zal7JT8maGKB658m',
    'https://youtu.be/_bqT6X0Viac?si=z2vGN_m9m5dZwIIk',
    'https://youtu.be/DxIDKZHW3-E?si=vhodh9CqVirBXiHb',
  ];

  late List<YoutubePlayerController> _controllers;
  bool isLoading = true; // Flag to track initialization

  @override
  void initState() {
    super.initState();
    initializeControllers();
  }

  Future<void> initializeControllers() async {
    _controllers = videoUrls
        .map((url) => YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: YoutubePlayerFlags(autoPlay: false, mute: false),
    ))
        .toList();

    setState(() {
      isLoading = false; // Mark initialization as complete
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      itemCount: videoUrls.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(10),
          child: YoutubePlayer(
            controller: _controllers[index],
            showVideoProgressIndicator: true,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }
}

class GamesTab extends StatelessWidget {
  final List<Game> games = [
    Game(
      title: 'Neuro Nation Brain training',
      imageUrl: 'Asset/Mental_health_2.jpg', // Local image asset
      url: Uri.parse('https://play.google.com/store/apps/details?id=air.nn.mobile.app.main'),
    ),
    Game(
      title: 'Wordscapes',
      imageUrl: 'Asset/Mental_health_3.jpg', // Local image asset
      url: Uri.parse('https://play.google.com/store/apps/details?id=com.peoplefun.wordcross'),
    ),
    Game(
      title: 'Focus train your brain',
      imageUrl: 'Asset/Mental_health_4.jpg', // Local image asset
      url: Uri.parse('https://play.google.com/store/apps/details?id=com.tellmewow.focus'),
    ),
    Game(
      title: 'Brain test tricky puzzles',
      imageUrl: 'Asset/Mental_health_5.jpg', // Local image asset
      url: Uri.parse('https://play.google.com/store/apps/details?id=com.unicostudio.braintest'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: games.length,
      itemBuilder: (context, index) {
        final game = games[index];
        return Card(
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    // Display game image with error handling
                    Image.asset(
                      game.imageUrl,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 100,
                          height: 100,
                          color: Colors.grey,
                          child: Icon(Icons.error, color: Colors.red),
                        );
                      },
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () => _launchURL(context, game.url),
                            child: Text('Install on Play Store'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Function to open a URL in the external browser
  void _launchURL(BuildContext context, Uri url) async {
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not launch Play Store link')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }
}

class Game {
  final String title;
  final String imageUrl;
  final Uri url;

  Game({required this.title, required this.imageUrl, required this.url});
}


class Article {
  final String title;
  final String imageUrl;
  final Uri url;

  Article({required this.title, required this.imageUrl, required this.url});
}
