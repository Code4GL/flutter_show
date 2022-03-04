import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Hero(
          tag: 'userImage',
          transitionOnUserGestures: true,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return HeroDetailPage();
                  },
                ),
              );
            },
            child: Image(
              height: 100,
              width: 100,
              image: AssetImage(
                "assets/images/userImage.png",
              ),
            ),
          ),
        ),
        Hero(
          tag: '为了部落',
          transitionOnUserGestures: true,
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              '为了部落！',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: 'userImage',
              transitionOnUserGestures: true,
              child: Image(
                image: AssetImage(
                  "assets/images/userImage.png",
                ),
              ),
            ),
          ),
          Hero(
            tag: '为了部落',
            transitionOnUserGestures: true,
            child: Center(
              child: Text(
                '为了部落！',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 129, 37, 28),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
