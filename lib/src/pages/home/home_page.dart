import 'package:flutter/material.dart';
import 'package:scg_portal_flutter/src/pages/home/widgets/image_carousel.dart';
import 'package:scg_portal_flutter/src/config/theme.dart' as custom_theme;

class HomePage extends StatefulWidget {

  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // here the desired height
        child: Stack(
          fit: StackFit.expand,
          children: [
            AppBar(
              centerTitle: true,
              title: Text("SCG Portal"),
              elevation: 0,
            ),
          ]
        )
      ),
      body: Center(        
        child: Column(
          children: [
            ///News Slider
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Stack(
                children: [
                  Material(
                    elevation: 4.0,
                    child: Container(
                      width: double.infinity,
                      height: 35,
                      color: Color(0xFF015591),
                    ),
                  ),
                  ComplicatedImageDemo()
                ]
              ),
            ),
            _buildMenu()
          ],
        )
      ),
    );
  }

  BoxDecoration _menuItemDecorator = BoxDecoration(
    border: Border.all(
      color: custom_theme.Theme.menuItemColor
    ),
    borderRadius: BorderRadius.all(Radius.circular(100)),
    color: custom_theme.Theme.menuItemColor
  );

  Expanded _buildMenu() => Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(20),
        children: [
          ///Dashboard
          GestureDetector(
            onTap: (){
              print('Home');
            },
            child: Column(
              children: [
                Container(
                  decoration: _menuItemDecorator,
                  padding: const EdgeInsets.all(20),
                  child:  Image(
                    image: AssetImage('assets/images/Dashboard_icon.png'),
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Dashboard",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )
          ),
          ///ข่าวสาร
          GestureDetector(
            onTap: (){
              print('ข่าวสาร');
            },
            child: Column(
              children: [
                Container(
                  decoration: _menuItemDecorator,
                  padding: const EdgeInsets.all(20),
                  child:  Image(
                    image: AssetImage('assets/images/news_icon.png'),
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "ข่าวสาร",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )
          ),
          ///Catalog
          GestureDetector(
            onTap: (){
              print('Catalog');
            },
            child: Column(
              children: [
                Container(
                  decoration: _menuItemDecorator,
                  padding: const EdgeInsets.all(20),
                  child:  Image(
                    image: AssetImage('assets/images/gallery_icon.png'),
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Catalog",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )
          ),
          ///คู่มือการใช้งาน
          GestureDetector(
            onTap: (){
              print('คู่มือการใช้งาน');
            },
            child: Column(
              children: [
                Container(
                  decoration: _menuItemDecorator,
                  padding: const EdgeInsets.all(20),
                  child: Image(
                    image: AssetImage('assets/images/guide_icon.png'),
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "คู่มือการใช้งาน",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )
          ),
          ///Link
          GestureDetector(
            onTap: (){
              print('Link');
            },
            child: Column(
              children: [
                Container(
                  decoration: _menuItemDecorator,
                  padding: const EdgeInsets.all(20),
                  child:  Image(
                    image: AssetImage('assets/images/links_icon.png'),
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Link",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )
          ),
        ]
      ),
  );
}

