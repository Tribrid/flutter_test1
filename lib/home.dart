import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SizedBox(width: 100),
            Text('Home'),
            Icon(Icons.search, color: Colors.white, size: 30),
            SizedBox(
              height: 50,
              width: 50,
              child: ProfileImage(),
            ),
          ],
        ),
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontFamily: 'Courier',
        ),
        toolbarHeight: 75,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        children: const [
          SizedBox(height: 20),
          Initial(),

          // SizedBox(
          //   height: 100,
          //   child: ButtonHeading(),
          // ),
          // SizedBox(
          //   height: 250,
          //   child: ImageSliderScreen(),
          // ),
          SizedBox(
            height: 300,
            child: TabScreen(),
          ),
          SizedBox(
            height: 90,
            child: Categories(),
          ),
          SizedBox(
            child: CatCard(),
          )
        ],
      ),
    );
    // );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 4.0),
        alignment: Alignment.centerLeft,
        child: const Text(
          'Hello,John',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'Courier',
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

class ButtonHeading extends StatelessWidget {
  const ButtonHeading({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 50,
          width: 150,
          padding: const EdgeInsets.all(10),
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
            borderRadius: BorderRadius.circular(20.0),
            // border: Border.all(
            //   color: const Color.fromARGB(255, 166, 207, 187),
            //   width: 1,
            // ),
          ),
          child: const Center(
              child: Text(
            'Overview',
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontFamily: 'Courier',
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        Container(
          height: 50,
          width: 150,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            //   gradient: const LinearGradient(
            //     colors: [
            //       Color.fromARGB(255, 103, 196, 250),
            //       Color.fromARGB(255, 217, 213, 226)
            //     ],
            //     begin: Alignment.bottomRight,
            //     end: Alignment.topLeft,
            //   ),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: const Color.fromARGB(255, 166, 207, 187),
              width: 1,
            ),
          ),
          child: const Center(
              child: Text(
            'Productivity',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: 'Courier',
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ],
    );
  }
}

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Transform.translate(
        offset: const Offset(0, 19),
      child: Column(
        children: [
          TabBar(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            labelStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Courier',
            ),
            //indicatorColor: Colors.blue,
            indicator: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 103, 196, 250),
                  Color.fromARGB(255, 217, 213, 226)
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),

            tabs: const [
              Tab(text: "Overview"),
              Tab(text: "Productivity"),
            ],
          ),
          const SizedBox(
            height: 250,
            child: TabBarView(
              children: [
                Center(
                  child: ImageSliderScreen(),
                ),
                Center(child: Text("Tab 2 Content")),
              ],
            ),
          ),
        ],
      ),
      ),
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
    return  PageView.builder(
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 330,
                height: 200,
                margin: const EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(_images[index]["image"]!),
                      fit: BoxFit.cover,
                    ),
                    ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 100),
                        pageBuilder: (_, __, ___) => FullScreenGalleryView(
                          images: _images.map((img)=> img['image']!).toList(),
                          initialIndex: index,
                        ),
                      ),
                    );
                  },    
                    child: Text(
                      _images[index]["title2"]!,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue
                          ),
                    ),
                ),
                ),
            ],
          );
        },
    );
  }
  }

class FullScreenGalleryView extends StatefulWidget{
  final List<String> images;
  final int initialIndex;

  const FullScreenGalleryView({
    super.key,
    required this.images,
    required this.initialIndex,
  });

  @override
  State<FullScreenGalleryView> createState() => _FullScreenGalleryViewState();
}

class _FullScreenGalleryViewState extends State<FullScreenGalleryView> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: widget.initialIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: PageView.builder(
          controller: _pageController,
          itemCount: widget.images.length,
          itemBuilder: (context, index) {
            return InteractiveViewer(
              child: Center(
                child: Image.network(
                  widget.images[index],
                  fit: BoxFit.contain,
                ),
                ),
            );
          },
        ),
      ),
    );
  }
} 


class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 4.0),
        alignment: Alignment.centerLeft,
        child: const Text(
          'Categories',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontFamily: 'Courier',
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

class CatCard extends StatefulWidget {
  const CatCard({super.key});

  @override
  //State<CatCard> createState() => _CatCardState();
  _CatCardState createState() => _CatCardState();
}

class _CatCardState extends State<CatCard> {
  Map<int, bool> favoriteStates = {};
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Transform.translate(
        offset: const Offset(0, -8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCard(
                    0,
                    decoratedIcon(Icons.book, Colors.blue, Colors.white),
                    secondIcon(Icons.person, Colors.grey, Colors.white),
                    "5 New",
                    "Books"),
                const SizedBox(width: 10),
                buildCard(
                    1,
                    decoratedIcon(Icons.mail, Colors.yellow, Colors.white),
                    secondIcon(Icons.person, Colors.grey, Colors.white),
                    "2 New",
                    "Emails"),
              ],
            ),
            const SizedBox(
              width: 10,
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCard(
                    2,
                    decoratedIcon(Icons.video_library,
                        const Color.fromARGB(255, 92, 185, 112), Colors.white),
                    secondIcon(Icons.person, Colors.grey, Colors.white),
                    "5 New",
                    "Videos"),
                const SizedBox(
                  width: 10,
                  height: 18,
                ),
                buildCard(
                    3,
                    decoratedIcon(Icons.notifications_active,
                        const Color.fromARGB(255, 145, 114, 233), Colors.white),
                    secondIcon(Icons.person, Colors.grey, Colors.white),
                    "2 New",
                    "Alerts"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget decoratedIcon(IconData iconData, Color bgColor, Color iconColor) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        iconData,
        color: iconColor,
        size: 20,
      ),
    );
  }

  Widget secondIcon(IconData iconData, Color bgColor, Color iconColor) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        iconData,
        color: iconColor,
        size: 20,
      ),
    );
  }

  Widget buildCard(int index, Widget icon, Widget secondIcon, String subTitle,
      String title) {
    bool isFavorite = favoriteStates[index] ?? false;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child:
          //children: [
          // ClipRRect(

          //   borderRadius: BorderRadius.circular(15),
          //   child: Image.network(
          //     imagePath,
          //     fit: BoxFit.cover,
          //     width: double.infinity,
          //     height: 150,
          //   ),
          // ),
          Container(
        width: 155,
        height: 160,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 103, 196, 250),
              Color.fromARGB(255, 217, 213, 226)
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icon,
                secondIcon,
              ],
            ),
            Text(
              subTitle,
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      favoriteStates[index] = !(favoriteStates[index] ?? false);
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: isFavorite ? Colors.red : Colors.white,
                  ),
                ),
                //Icon(Icons.favorite, color: Colors.red),
                const Icon(Icons.share, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
