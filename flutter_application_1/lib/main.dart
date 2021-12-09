import 'package:flutter/material.dart';
import 'package:flutter_application_1/Kitaplik.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

Color _color = Color(0xFF121212);

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    List<String> albumlerList = [
      "Alikper",
      "Akşamüstü",
      "This Is Adamlar",
      "This Is Duman"
    ];
    List<String> albumlerFotograf = [
      "lib/resimler/goat.png",
      "lib/resimler/aksamustu.png",
      "lib/resimler/duman.png",
      "lib/resimler/adamlar.png"
    ];
    List<String> moreList = ["Macklemore", "Passenger", "Breakfast"];
    List<String> moreFotograflar = [
      "lib/resimler/macklemore.png",
      "lib/resimler/passenger.png",
      "lib/resimler/breakfast.png"
    ];
    List<String> moreDesc = ["with Ryan", "These songs", "Chiddy bang"];
    List<String> programFotograflar = [
      "lib/resimler/dayi.png",
      "lib/resimler/ege.png"
    ];
    List<String> programIsimler = [
      "Oysa herkes öldürür sevdiğini",
      "Ege fitness motivasyonlar"
    ];
    List<String> programAciklama = [
      "program ' Ramiz dayı",
      "Program ' unsatisfied"
    ];
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: _color,
      appBar: _appbar(),
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Spotify",
                        style: TextStyle(
                            color: Color(0xFF1ED760),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // albumler
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Kitaplik()));
                              },
                              child:
                                  albums(albumlerList[0], albumlerFotograf[0])),
                          SizedBox(
                            width: 20,
                          ),
                          albums(albumlerList[1], albumlerFotograf[1]),
                          SizedBox(
                            width: 20,
                          ),
                          albums(albumlerList[2], albumlerFotograf[2]),
                          SizedBox(
                            width: 20,
                          ),
                          albums(albumlerList[3], albumlerFotograf[3]),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    //
                    SizedBox(
                      height: 20,
                    ),
                    bilgi(),
                    SizedBox(
                      height: 20,
                    ),
                    // more
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          more(moreList[0], moreFotograflar[0], moreDesc[0]),
                          SizedBox(
                            width: 20,
                          ),
                          more(moreList[1], moreFotograflar[1], moreDesc[1]),
                          SizedBox(
                            width: 20,
                          ),
                          more(moreList[2], moreFotograflar[2], moreDesc[2]),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    // program text
                    Text(
                      "Hoşuna gidebilecek programlar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    // program
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Row(
                          children: [
                            program(programIsimler[0], programFotograflar[0],
                                programAciklama[0]),
                            SizedBox(
                              width: 20,
                            ),
                            program(programIsimler[1], programFotograflar[1],
                                programAciklama[1]),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          navBar(size),
        ],
      ),
    );
  }

  Widget bilgi() {
    // yuvarlak görsel
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("lib/resimler/macklemore.png"),
                  fit: BoxFit.fill),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bunun gibi daha fazla",
              style: TextStyle(color: Colors.grey[600], fontSize: 17),
            ),
            Text(
              "Macklemore",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }

  Widget albums(String isim, String gorseli) {
    return Container(
      width: 120,
      height: 150,
      child: Container(
        width: 120,
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage("$gorseli"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "$isim",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget more(String albumIsim, String gorsel, String aciklama) {
    return Container(
      width: 170,
      height: 250,
      child: Container(
        width: 120,
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage("$gorsel"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "$albumIsim",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "$aciklama",
                style: TextStyle(color: Colors.grey[600]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget program(String albumIsim, String gorsel, String aciklama) {
    return Container(
      width: 170,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("$gorsel"), fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "$albumIsim",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "$aciklama",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }

  bool bir = true, iki = false, uc = false;
  Align navBar(Size size) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: size.width,
        height: 50,
        decoration: BoxDecoration(
            color: _color,
            border: Border(top: BorderSide(width: 2.0, color: Colors.black))),
        child: Row(
          children: [
            SizedBox(
              width: 50,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bir = true;
                  iki = false;
                  uc = false;
                });
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: bir ? Colors.white : Colors.grey[600],
                    ),
                    Text(
                      "Ana sayfa",
                      style: TextStyle(
                        color: bir ? Colors.white : Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 80,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bir = false;
                  iki = true;
                  uc = false;
                });
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: iki ? Colors.white : Colors.grey[600],
                    ),
                    Text(
                      "Ara",
                      style: TextStyle(
                        color: iki ? Colors.white : Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 80,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bir = false;
                  iki = false;
                  uc = true;
                });
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Kitaplik()));
                },
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.list,
                        color: uc ? Colors.white : Colors.grey[600],
                      ),
                      Text("Kitaplığım",
                          style: TextStyle(
                            color: uc ? Colors.white : Colors.grey[600],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appbar() => AppBar(
        backgroundColor: Color(0xFF121212),
        elevation: 0,
        actions: [
          Icon(
            Icons.settings_outlined,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      );
}
