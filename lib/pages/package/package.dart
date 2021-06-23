import 'package:flutter/material.dart';
import 'dart:convert' show json;
import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/components/package_cell.dart';

class PackagePage extends StatefulWidget {
  @override
  _PackagePageState createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
                labelPadding: EdgeInsets.zero,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                controller: _tabController,
                tabs: <Widget>[
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Tab(text: 'Basics'),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Tab(text: 'UI'),
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
                      .loadString("assets/data/package/basics.json"),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<dynamic> data = json.decode(snapshot.data);
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
                                ),
                              )
                              .toList(),
                        ),
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
                Center(child: Text('Content of UI')),
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

  StickyTabBarDelegate({@required this.child});

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
