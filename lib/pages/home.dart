import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  int activePage = 0;
  final List<String> imgList = [
    "images/star.jpg",
    "images/star.jpg",
    "images/star.jpg",
    "images/star.jpg",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leadingWidth: 90,
          scrolledUnderElevation: 2.0,
          backgroundColor: Colors.white,
          leading: const Center(
            child: Text(
              "eFITS",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                fontFamily: "Merriweather",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 33,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                  size: 33,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => const BuildAvatarWidget(
                      backgroundImage: AssetImage("images/star.jpg"),
                      title: "Shoes",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset("images/star.jpg"),
                ),
              ),
              const OrDivider(
                text: "New Collection",
              ),
              const Text("Discover new styles"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "UP TO 60% OFF",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0, top: 7.0),
                      child: Text(
                        "SHOP NOW",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      itemCount: imgList.length,
                      pageSnapping: true,
                      controller: _pageController,
                      onPageChanged: (page) {
                        setState(() {
                          activePage = page;
                        });
                      },
                      itemBuilder: (context, index) {
                        bool active = index == activePage;
                        return slider(imgList, index, active);
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicators(imgList.length, activePage),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
