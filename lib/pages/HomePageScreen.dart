import 'package:flutter/material.dart';
import 'package:sample/components/dailymix.dart';

class HomePageScreen extends StatelessWidget {
  // Icon _MenuIcon = Icon(Icons someicon,   Colors.white, size: 40.0),
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 1, 15, 36),
      persistentFooterButtons: [
        Container(
          color: Colors.blue[200],
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.account_circle, color: Colors.white, size: 40.0),
                Icon(Icons.display_settings_sharp,
                    color: Colors.white, size: 40.0),
                Icon(Icons.home_max_sharp, color: Colors.white, size: 40.0),
                Icon(Icons.my_library_music_sharp,
                    color: Colors.white, size: 40.0),
                Icon(Icons.playlist_play, color: Colors.white, size: 40.0)
              ],
            ),
          ),
        ),
      ],
      // ),
      drawer: Container(
        child: Text("Helo i am the drawer"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 50.0, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Discover",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 15.0,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 5.0),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search a song, artist, genres, album here",
                    hintStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 20.0,
              ),
              Flexible(
                child: Container(
                  height: 120,
                  width: 400,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    physics:
                        ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    children: [
                      Dailymix(
                          genre_name: "hipHop",
                          imagelink:
                              "https://st.depositphotos.com/1202217/1864/i/950/depositphotos_18649859-stock-photo-graffiti-wall-with-hip-hop.jpg"),
                      Dailymix(
                        genre_name: "blues",
                        imagelink:
                            "https://www.udiscovermusic.com/wp-content/uploads/2015/05/Greatest-Blues-Albums-GettyImages-74279188.jpg",
                      ),
                      Dailymix(
                        genre_name: "alternative",
                        imagelink:
                            "https://images.saymedia-content.com/.image/t_share/MTc2NDY1MzI2ODE1MzIzMzQ5/100-best-alternative-rock-bands.jpg",
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
