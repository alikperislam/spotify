import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/sarki.dart';

class Kitaplik extends StatefulWidget {
  const Kitaplik({Key? key}) : super(key: key);

  @override
  _KitaplikState createState() => _KitaplikState();
}

class _KitaplikState extends State<Kitaplik> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: _color,
      appBar: _appbar(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Center(
              child: _arayuz(size),
            ),
          ),
          _navBar(size),
        ],
      ),
    );
  }

  List<String> nameList = [
    "Big Shark",
    "'Till I Collapse",
    "Dursun Zaman",
    "Survivor",
    "Jenga",
    "FEEL NOTHING",
    "Başaramadım",
    "Tokyo Drift (F & F)",
    "Senden Daha Güzel",
    "Nankör Kedy",
  ];
  List<String> descList = [
    "Russ Millions 'Big Shark ",
    "Eminem ' Nate Dogg",
    "maNga, Göksel ' maNga +",
    "2WEI, Edda Hayes ' Sequels",
    "Khontkar ' jenga",
    "The Plot In You",
    "Azer Bülbül",
    "The Fast and The Furious",
    "Duman ' belki alışmam lazım",
    "Şarkı ' İbrahim Tatlıses",
  ];
  List<String> sarkiList = [
    "lib/resimler/shark.png",
    "lib/resimler/eminem.png",
    "lib/resimler/manga.png",
    "lib/resimler/survivor.png",
    "lib/resimler/jenga.png",
    "lib/resimler/feel.png",
    "lib/resimler/basaramadim.png",
    "lib/resimler/tokyo.png",
    "lib/resimler/senden.png",
    "lib/resimler/kedy.png",
  ];
  List<String> idList = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];

  bool _switchDeger = false;
  Widget _arayuz(Size size) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // görsel
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset("lib/resimler/goat.png"),
          ),
          // text1
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Goat Mobile",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          // text 2
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "Takip ediliyor",
              style: TextStyle(color: Colors.grey[600], fontSize: 18),
            ),
          ),
          // iki nokta
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  width: 10,
                  height: 10,
                ),
              ],
            ),
          ),
          // karısık çal container
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green[800],
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(
                  "Karışık çal",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 0),
            child: Container(
              width: 140,
              height: 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(
                  "Şarkıları ekle",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "İndir",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              Spacer(),
              CupertinoSwitch(
                  value: _switchDeger,
                  onChanged: (value) {
                    setState(() {
                      _switchDeger = value;
                    });
                  }),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sarki(nameList[0], descList[0],
                              sarkiList[0], idList[0])));
                },
                child: _liste(size, nameList[0], descList[0]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sarki(nameList[1], descList[1],
                              sarkiList[1], idList[1])));
                },
                child: _liste(
                  size,
                  nameList[1],
                  descList[1],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sarki(nameList[2], descList[2],
                              sarkiList[2], idList[2])));
                },
                child: _liste(
                  size,
                  nameList[2],
                  descList[2],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sarki(nameList[3], descList[3],
                              sarkiList[3], idList[3])));
                },
                child: _liste(
                  size,
                  nameList[3],
                  descList[3],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sarki(nameList[4], descList[4],
                              sarkiList[4], idList[4])));
                },
                child: _liste(
                  size,
                  nameList[4],
                  descList[4],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sarki(nameList[5], descList[5],
                              sarkiList[5], idList[5])));
                },
                child: _liste(
                  size,
                  nameList[5],
                  descList[5],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sarki(nameList[6], descList[6],
                              sarkiList[6], idList[6])));
                },
                child: _liste(
                  size,
                  nameList[6],
                  descList[6],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sarki(nameList[7], descList[7],
                              sarkiList[7], idList[7])));
                },
                child: _liste(
                  size,
                  nameList[7],
                  descList[7],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sarki(nameList[8], descList[8],
                              sarkiList[8], idList[8])));
                },
                child: _liste(
                  size,
                  nameList[8],
                  descList[8],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sarki(nameList[9], descList[9],
                              sarkiList[9], idList[9])));
                },
                child: _liste(
                  size,
                  nameList[9],
                  descList[9],
                ),
              ),
            ],
          ),
          // en alta hangisi gelirse gelsin navbar üzerinde listelenecek.
          SizedBox(
            height: 125,
          )
        ],
      ),
    );
  }

  Container _liste(Size size, String name, String desc) {
    return Container(
      height: 60,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$name",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "$desc",
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Color _color = Color(0xFF121212);
  bool bir = false, iki = false, uc = true;
  bool _bir = false;
  bool statePlay = false;

  Align _navBar(Size size) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: size.width,
        height: 120,
        decoration: BoxDecoration(
            color: _color,
            border: Border(top: BorderSide(width: 1.0, color: Colors.grey))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _bir = !_bir;
                        });
                      },
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 30,
                              color: _bir ? Colors.green : Colors.grey[600],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Align(
                      child: Text(
                        "Big Shark",
                        style: TextStyle(color: Colors.grey[600], fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          statePlay = !statePlay;
                        });
                      },
                      child: Icon(
                        statePlay
                            ? Icons.pause_circle_outline
                            : Icons.play_circle_outlined,
                        size: 30,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    //-----------------  daha sonra kullan!
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.rotate_right_outlined,
                        size: 30,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Container(
                width: size.width,
                height: 1,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
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
                      onTap: () {},
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
            Icons.more_vert_outlined,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      );
}
