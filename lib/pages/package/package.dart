import 'package:flutter/material.dart';
import 'dart:convert' show json;
import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/components/package_cell.dart';
import 'package:flutter_show/components/rank_cell.dart';

class PackagePage extends StatefulWidget {
  @override
  _PackagePageState createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            elevation: 0,
            expandedHeight: 200,
            leading: IconButton(
              icon: Icon(Icons.dehaze),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            actions: <Widget>[
              LanguageChange(),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Image(
                height: 30,
                image: AssetImage('assets/images/package/pub-dev-logo.png'),
              ),
              background: Image(
                image: AssetImage('assets/images/package/hero-bg-static.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: StickyTabBarDelegate(
              child: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.zero,
                labelColor: Theme.of(context).colorScheme.primary,
                unselectedLabelColor:
                    Theme.of(context).colorScheme.outline.withOpacity(0.5),
                controller: _tabController,
                tabs: <Widget>[
                  Container(
                    width: 70,
                    color: Theme.of(context).colorScheme.surface,
                    child: Tab(text: 'Rank'),
                  ),
                  Container(
                    width: 70,
                    color: Theme.of(context).colorScheme.surface,
                    child: Tab(text: 'Basics'),
                  ),
                  Container(
                    width: 70,
                    color: Theme.of(context).colorScheme.surface,
                    child: Tab(text: 'Theme'),
                  ),
                  Container(
                    width: 70,
                    color: Theme.of(context).colorScheme.surface,
                    child: Tab(text: 'UI'),
                  ),
                  Container(
                    width: 70,
                    color: Theme.of(context).colorScheme.surface,
                    child: Tab(text: 'Media'),
                  ),
                  Container(
                    width: 70,
                    color: Theme.of(context).colorScheme.surface,
                    child: Tab(text: 'Chart'),
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString("assets/data/package/rank.json"),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<dynamic> data =
                          json.decode(snapshot.data.toString());
                      return SingleChildScrollView(
                        child: Column(
                          children: data
                              .map(
                                (item) => RankCell(
                                  title: item['title'],
                                  introductionEN: item['introductionEN'],
                                  introductionCN: item['introductionCN'],
                                  routeName: item['routeName'],
                                  imagePath: item['imagePath'],
                                  detailPath: item['detailPath'],
                                  example: item['example'],
                                ),
                              )
                              .toList(),
                        ),
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
                FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString("assets/data/package/basics.json"),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<dynamic> data =
                          json.decode(snapshot.data.toString());
                      return SingleChildScrollView(
                        child: Column(
                          children: data
                              .map(
                                (item) => PackageCell(
                                  title: item['title'],
                                  introductionEN: item['introductionEN'],
                                  introductionCN: item['introductionCN'],
                                  routeName: item['routeName'],
                                  isNullSafety: item['isNullSafety'],
                                  isFavourite: item['isFavourite'],
                                  owner: item['owner'],
                                  ownerPath: item['ownerPath'],
                                  detailPath: item['detailPath'],
                                  flutter: item['flutter'],
                                  dart: item['dart'],
                                  apiResult: item['apiResult'],
                                ),
                              )
                              .toList(),
                        ),
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
                FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString("assets/data/package/theme.json"),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<dynamic> data =
                          json.decode(snapshot.data.toString());
                      return SingleChildScrollView(
                        child: Column(
                          children: data
                              .map(
                                (item) => PackageCell(
                                  title: item['title'],
                                  introductionEN: item['introductionEN'],
                                  introductionCN: item['introductionCN'],
                                  routeName: item['routeName'],
                                  isNullSafety: item['isNullSafety'],
                                  isFavourite: item['isFavourite'],
                                  owner: item['owner'],
                                  ownerPath: item['ownerPath'],
                                  detailPath: item['detailPath'],
                                  flutter: item['flutter'],
                                  dart: item['dart'],
                                  apiResult: item['apiResult'],
                                ),
                              )
                              .toList(),
                        ),
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
                FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString("assets/data/package/ui.json"),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<dynamic> data =
                          json.decode(snapshot.data.toString());
                      return SingleChildScrollView(
                        child: Column(
                          children: data
                              .map(
                                (item) => PackageCell(
                                  title: item['title'],
                                  introductionEN: item['introductionEN'],
                                  introductionCN: item['introductionCN'],
                                  routeName: item['routeName'],
                                  isNullSafety: item['isNullSafety'],
                                  isFavourite: item['isFavourite'],
                                  owner: item['owner'],
                                  ownerPath: item['ownerPath'],
                                  detailPath: item['detailPath'],
                                  flutter: item['flutter'],
                                  dart: item['dart'],
                                  apiResult: item['apiResult'],
                                ),
                              )
                              .toList(),
                        ),
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
                FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString("assets/data/package/media.json"),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<dynamic> data =
                          json.decode(snapshot.data.toString());
                      return SingleChildScrollView(
                        child: Column(
                          children: data
                              .map(
                                (item) => PackageCell(
                                  title: item['title'],
                                  introductionEN: item['introductionEN'],
                                  introductionCN: item['introductionCN'],
                                  routeName: item['routeName'],
                                  isNullSafety: item['isNullSafety'],
                                  isFavourite: item['isFavourite'],
                                  owner: item['owner'],
                                  ownerPath: item['ownerPath'],
                                  detailPath: item['detailPath'],
                                  flutter: item['flutter'],
                                  dart: item['dart'],
                                  apiResult: item['apiResult'],
                                ),
                              )
                              .toList(),
                        ),
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
                FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString("assets/data/package/chart.json"),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<dynamic> data =
                          json.decode(snapshot.data.toString());
                      return SingleChildScrollView(
                        child: Column(
                          children: data
                              .map(
                                (item) => PackageCell(
                                  title: item['title'],
                                  introductionEN: item['introductionEN'],
                                  introductionCN: item['introductionCN'],
                                  routeName: item['routeName'],
                                  isNullSafety: item['isNullSafety'],
                                  isFavourite: item['isFavourite'],
                                  owner: item['owner'],
                                  ownerPath: item['ownerPath'],
                                  detailPath: item['detailPath'],
                                  flutter: item['flutter'],
                                  dart: item['dart'],
                                  apiResult: item['apiResult'],
                                ),
                              )
                              .toList(),
                        ),
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return this.child;
  }

  @override
  double get maxExtent => this.child.preferredSize.height;

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
