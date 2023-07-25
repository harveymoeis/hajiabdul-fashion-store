import 'package:coffee_shop_youtube/widget/category.dart';
import 'package:coffee_shop_youtube/widget/abdul.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Tersimpan"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil")
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: 140, width: double.infinity, color: Color.fromARGB(255, 119, 158, 226)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg")),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 2))),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                " Katalog Member",
                                style:
                                    GoogleFonts.montserrat(color: Colors.white),
                              ),
                             
                            ],
                          ), Positioned(
                top: 40,
                 child: Card( 
                  child:Text(
                  " Haji Abdul Fashion Store ",
                  style:
                      GoogleFonts.montserrat(color: Color.fromARGB(255, 119, 165, 229),fontWeight: FontWeight.bold, fontSize: 30),
                ))),
                          Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F7),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: "Telusuri",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Category(imagePath: "assets/kj.png", title: "Kemeja"),
                  Category(imagePath: "assets/ks.png", title: "Kaos"),
                  Category(imagePath: "assets/tas.png", title: "Tas"),
                  Category(imagePath: "assets/sepatu.png", title: "Sepatu"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Pilih Paket Belanja",
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CoffeShop(
              imagePath: "assets/bronze.png",
              nameShop: "Bronze""               ""Rp.1.000.000,-",
              rating: "4.8" ,
              jamBuka: "24jam",
            ),
            CoffeShop(
              imagePath: "assets/sl.png",
              nameShop: "Silver""                   ""Rp.1.500.000,-",
              rating: "4.9",
              jamBuka: "24jam",
            ),
            CoffeShop(
              imagePath: "assets/gold.png",
              nameShop: "Gold""                    ""Rp.2.000.000,-",
              rating: "4.7",
              jamBuka: "24jam",
              
            ),
          ],
        )),
      ),
    );
  }
}
