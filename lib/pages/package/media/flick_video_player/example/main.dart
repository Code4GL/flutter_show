import 'animation_player/animation_player.dart';
import 'custom_orientation_player/custom_orientation_player.dart';
import 'feed_player/feed_player.dart';

import 'package:flutter/material.dart';

import './landscape_player/landscape_player.dart';

import 'default_player/default_player.dart';

class FlickVideoPlayerExamplePage extends StatefulWidget {
  const FlickVideoPlayerExamplePage({Key? key}) : super(key: key);

  @override
  _FlickVideoPlayerExamplePageState createState() =>
      _FlickVideoPlayerExamplePageState();
}

class _FlickVideoPlayerExamplePageState
    extends State<FlickVideoPlayerExamplePage> {
  final List<Map<String, dynamic>> samples = [
    {'name': 'Default player', 'widget': DefaultPlayer()},
    {'name': 'Animation player', 'widget': Expanded(child: AnimationPlayer())},
    {'name': 'Feed player', 'widget': Expanded(child: FeedPlayer())},
    {'name': 'Custom orientation player', 'widget': CustomOrientationPlayer()},
    {'name': 'Landscape player', 'widget': LandscapePlayer()},
  ];

  int selectedIndex = 0;

  changeSample(int index) {
    if (samples[index]['widget'] is LandscapePlayer) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LandscapePlayer(),
      ));
    } else {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlickVideoPlayerExample'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: samples[selectedIndex]['widget'],
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: samples.asMap().keys.map((index) {
                  return Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        changeSample(index);
                      },
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            samples.asMap()[index]?['name'],
                            style: TextStyle(
                              color: index == selectedIndex
                                  ? Color.fromRGBO(100, 109, 236, 1)
                                  : Color.fromRGBO(173, 176, 183, 1),
                              fontWeight: index == selectedIndex
                                  ? FontWeight.bold
                                  : null,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList()),
          ),
        ],
      ),
    );
  }
}
