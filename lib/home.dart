import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            // Icon(
            //   Icons.home,
            //   size: 30,
            // ),
            SizedBox(width: 8),
            Text('Home'),
          ],
        ),
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontFamily: 'Courier',
        ),
        toolbarHeight: 75,
      ),
      body: ListView(
        children: const [
          SizedBox(height: 20),
          Initial(),
          SizedBox(
            height: 250,
            child: ImageSliderScreen(),
          ),
          SizedBox(
            height: 250,
            child: ImageSliderScreen(),
          ),
        ],
      ),
    );
  }
}

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.greenAccent,
      height: 100,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 103, 196, 250),
            Color.fromARGB(255, 217, 213, 226)
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: const Color.fromARGB(255, 166, 207, 187),
          width: 1,
        ),
      ),
      child: const Center(
          child: Text(
        'Welcome',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: 'Courier',
        ),
      )),
    );
  }
}

class ImageSliderScreen extends StatefulWidget {
  const ImageSliderScreen({super.key});

  @override
  _ImagesSliderScreenState createState() => _ImagesSliderScreenState();
}

class _ImagesSliderScreenState extends State<ImageSliderScreen> {
  final List<Map<String, String>> _images = [
    {
      "image":
          "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg",
      "title": "Image 1",
      "title2": "View"
    },
    {
      "image":
          "https://t4.ftcdn.net/jpg/07/23/14/93/360_F_723149335_tA0Fo8zefrHzYlSgXRMYHmBQk7CuWrRd.jpg",
      "title": "Image 2",
      "title2": "View"
    },
    {
      "image":
          "https://static.vecteezy.com/system/resources/thumbnails/025/067/762/small/4k-beautiful-colorful-abstract-wallpaper-photo.jpg",
      "title": "Image 3",
      "title2": "View"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 200,
                margin: const EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(_images[index]["image"]!),
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      _images[index]["title"]!,
                      style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _images[index]["title2"]!,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
