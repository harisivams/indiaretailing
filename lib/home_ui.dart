import 'package:flutter/material.dart';
import 'models/news_card.dart';
import 'models/slider_card.dart';
import 'models/focus_card.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          // icon: Image.asset('assets/Vector.png', height: 50, width: 50),
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/indiaretail.png', height: 30),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          _SliderSection(),
          const SizedBox(height: 10),
          const InFocusCard(
              imagePath: 'assets/rahul.jpg',
              headline:
                  'Rahul Gandhi In Manipur: Chopper Ride After Women Protesters Surround Car'),
          const NewsCard(
              category: 'SELECT CITYWALK',
              title:
                  'Wow! Momo Foods enters Bhopal with Wow! \n# Beverage #reels stories podcast',
              imagePath: 'assets/image 34.png'),
          const Divider(
            thickness: 1,
          ),
          const NewsCard(
              category: 'FOOD & BEVERAGE',
              title:
                  'KFC opens another outlet in Punjab \n# Beverage #reels stories podcast',
              imagePath: 'assets/image 36.png'),
          const Divider(
            thickness: 1,
          ),
          const NewsCard(
              category: 'FOOD & BEVERAGE',
              title:
                  'KFC opens another outlet in Punjab \n# Citywalk #reels stories podcast',
              imagePath: 'assets/image 35.png'),
          const Text(
            " Latest News",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
          ),
          // const Divider(thickness: 5,color: Colors.red,),
          const SizedBox(
            height: 5,
          ),
          _SliderSection2(),
          const SizedBox(
            height: 5,
          ),
          _listsection(),
          const SizedBox(height: 5,),
          
        ],
      ),
    );
  }

  Widget _SliderSection() {
    return SizedBox(
      height: 110,
      child: PageView(
        controller: PageController(viewportFraction: 0.85),
        children: const [
          SliderCard(
              imagePath: 'assets/news1.png',
              title: 'Hotspots',
              description: 'Luxury Hotspots: 5 most expensive high streets'),
          SliderCard(
              imagePath: 'assets/news2.png',
              title: 'Rahul Gandhi',
              description:
                  'Rahul Gandhi in Manipur: Chopper ride amid protests'),
          SliderCard(
              imagePath: 'assets/news1.png',
              title: 'Momo Foods',
              description: 'Wow! Momo Foods: Enters Bhopal with Wow!'),
        ],
      ),
    );
  }

  Widget _SliderSection2() {
    return SizedBox(
      height: 280,
      child: PageView(
        controller: PageController(viewportFraction: 0.85),
        children: const [
          SliderCard1(
              imagePath: 'assets/newsimage1.png',
              description: 'Unwrapping the Archies’ reinvention plan ',
              tag: '#Lifestyle'),
          SliderCard1(
            imagePath: 'assets/newsimage2.png',
            description:
                'How AI is enhancing stores, How AI is enhancing stores',
            tag: '#Lifestyle',
          ),
          SliderCard1(
            imagePath: 'assets/newsimage1.png',
            description: 'Unwrapping the Archies’ reinvention plan ',
            tag: '#Lifestyle',
          ),
        ],
      ),
    );
  }

  Widget _listsection() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              thickness: 1,
            ),
            const Text(
              " Croma opens 58 outlets in 6, Croma retails more than 16,000",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 2),
            const Text(
              "These companies created a lot of hype when they listed on the...",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(height: 4),
            const Text(
              "Select Citywalk opens 4 new stores in June",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 2),
            const Text(
              "These companies created a lot of hype when they listed on the...",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            Center(
              child: Column(
                children: [
                  const Text("- Advertisement -"),
                  Image.asset(
                    'assets/ad.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
