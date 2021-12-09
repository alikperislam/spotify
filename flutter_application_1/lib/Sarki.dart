import 'dart:ui';
import 'package:flutter/material.dart';

class Sarki extends StatefulWidget {
  late String _sarki;
  late String _desc;
  late String _foto;
  late String _id;
  Sarki(this._sarki, this._desc, this._foto, this._id);

  @override
  _SarkiState createState() => _SarkiState();
}

class _SarkiState extends State<Sarki> {
  @override
  Widget build(BuildContext context) {
    int sarkiId = int.parse(widget._id);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: _color,
      appBar: _appbar(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Center(
              child:
                  _arayuz(widget._sarki, widget._desc, widget._foto, sarkiId),
            ),
          ),
        ],
      ),
    );
  }

  bool play_pause = true;
  bool favori = false;
  double sliderDeger = 0;
  Widget _arayuz(String _isim, String _aciklama, String _foto, int _id) {
    String degisFoto = _foto;
    String degisIsim = _isim;
    String degisAciklama = _aciklama;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 280,
            width: 280,
            decoration: BoxDecoration(
              boxShadow: [
                // gölgelendirme
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 8,
                  blurRadius: 15,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Image.asset(
              "$_foto",
            ),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "$_isim",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 30),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  favori = !favori;

                  //
                  if (favori == true) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Beğenildi! bu şarkıyı kitaplığında bul.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Colors.grey,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Hadi, bu hiç olmamış gibi davranalım.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Colors.grey,
                      ),
                    );
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 21),
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: favori ? Colors.green : Colors.white,
                  size: 27,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "$_aciklama",
            style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
        ),
        Slider(
          activeColor: Colors.white,
          inactiveColor: Colors.grey[800],
          value: sliderDeger,
          min: 0,
          max: 300,
          divisions: 300,
          label: sliderDeger.round().toString(),
          onChanged: (double value) {
            setState(
              () {
                sliderDeger = value;
              },
            );
          },
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "0:00",
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 21),
              child: Text(
                "3:25",
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(
                Icons.shuffle_rounded,
                color: Colors.grey[400],
                size: 30,
              ),
            ),
            // önceki şarkıyı çal
            GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: Icon(
                Icons.chevron_left,
                color: Colors.white,
                size: 40,
              ),
            ),
            // şarkı çalıştır - durdur.
            GestureDetector(
              onTap: () {
                setState(() {
                  play_pause = !play_pause;
                });
              },
              child: Icon(
                play_pause ? Icons.pause_circle : Icons.play_circle,
                color: Colors.white,
                size: 50,
              ),
            ),
            // sonraki şarkıyı çal
            GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: Icon(
                Icons.chevron_right,
                color: Colors.white,
                size: 40,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  sliderDeger = 0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 21),
                child: Icon(
                  Icons.replay_rounded,
                  color: Colors.grey[400],
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Color _color = Color(0xFF121212);
  AppBar _appbar() => AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Albümden çalınıyor\n       Goat Mobile",
            style: TextStyle(fontSize: 15, color: Colors.grey[300]),
          ),
        ),
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
