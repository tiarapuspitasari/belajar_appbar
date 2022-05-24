import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Belajar Silver AppBar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      )),
                  background: Image(
                    image: AssetImage('assets/images/01.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Songs"),
                      new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                      new Tab(icon: new Icon(Icons.playlist_add), text: "Favorite"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Songs(),
              Gallery(),
              Favorite()
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
      color: Colors.white,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class Songs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Jika - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Gantung - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Bimbang - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Every Summertime - NIKI"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Im Falling in Love - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Cinta Sejati - Bunga Citra Lestari"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Bahaya - Tiara Andini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Merasa Indah - Tiara Andini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Janji Kita - Mahalini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Love Story - Taylor Swift"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Aku Yang Salah - Mahalini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Jealous - Labrinth"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Lowkey - NIKI"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("California - NIKI"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("I Like U - NIKI"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Masih - Rossa"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Pudar - Rossa"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Kecewa - Bunga Citra Lestari"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Aku dan Dirimu - Bunga Citra Lestari"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Pesan Terakhir - Lyodra Ginting"),
          ),
        ],
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  final List images = [
    "assets/images/01.jpg",
    "assets/images/02.jpg",
    "assets/images/03.jpg",
    "assets/images/04.jpg",
    "assets/images/05.jpg",
    "assets/images/06.jpg",
    "assets/images/07.jpg",
    "assets/images/08.jpg",
    "assets/images/09.jpg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
    "assets/images/13.jpg",
    "assets/images/14.jpg",
    "assets/images/15.jpg",
    "assets/images/16.jpg",
    "assets/images/17.jpg",
    "assets/images/18.jpg",
    "assets/images/19.jpg",
    "assets/images/20.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          if (index > 0) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image.asset(images[index % 15]),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(images[index]),
            );
          }
        },
      ),
    );
  }
}

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.playlist_add),
            title: Text("Gantung - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_add),
            title: Text("Janji Kita - Mahalini"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_add),
            title: Text("Lowkey - NIKI"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_add),
            title: Text("Merasa Indah - Tiara Andini"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_add),
            title: Text("Bahaya - Tiara Andini"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_add),
            title: Text("Jealous - Labrinth"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_add),
            title: Text("Cinta Sejati - Bunga Citra Lestari"),
          ),
        ],
      ),
    );
  }
}
