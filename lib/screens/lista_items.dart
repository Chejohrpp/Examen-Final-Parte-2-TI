
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lista_items extends StatelessWidget {
  Items item1 = Items(
      title: "Juego",
      img: "");

  Items item2 =  Items(
    title: "Pelicula",
    img: "",
  );
  Items item3 =  Items(
    title: "Tecnologia",
    img: "",
  );
  Items item4 =  Items(
    title: "Relajarme",
    img: "",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: const EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            var sizedBox = const SizedBox(
                    height: 8,
                  );
            var textStyle2 = const TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600);
            var sizedBox2 = const SizedBox(
                    height: 14,
                  );
            var textStyle4 = const TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600);
            var textStyle3 = textStyle4;

            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // ignore: prefer_const_constructors
                  Icon(
                    Icons.abc
                    // width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  Items({required this.title,required this.img});
}
