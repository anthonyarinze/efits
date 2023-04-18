import 'package:flutter/material.dart';

//Circular story avatars
class BuildAvatarWidget extends StatelessWidget {
  final ImageProvider<Object> backgroundImage;
  final String title;

  const BuildAvatarWidget({
    super.key,
    required this.backgroundImage,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: backgroundImage,
            radius: 35,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

//Divider to center text
class OrDivider extends StatelessWidget {
  final String text;
  const OrDivider({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Colors.grey.shade800,
        height: 2,
      ),
    );
  }
}

//Slider Page Indicators
List<Widget> indicators(imageLength, currentIndex) {
  return List<Widget>.generate(imageLength, (index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
      margin: const EdgeInsets.all(3.0),
      width: currentIndex == index ? 10 : 7,
      height: currentIndex == index ? 10 : 7,
      decoration: BoxDecoration(
        color: currentIndex == index ? Colors.black : Colors.black26,
        shape: BoxShape.circle,
      ),
    );
  });
}

//Carousel Widget
AnimatedContainer slider(images, index, active) {
  double margin = active ? 10 : 20;
  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          images[index],
        ),
      ),
    ),
  );
}
