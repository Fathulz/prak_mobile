import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:posttest2_miftahulhaq_1915016191/appBarUI.dart';
import 'package:posttest2_miftahulhaq_1915016191/bottomNavbarUI.dart';

class LandingPageUI extends StatelessWidget {
  const LandingPageUI({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var lbr = MediaQuery.of(context).size.width;
    var tgg = MediaQuery.of(context).size.height;

    List<Map<String, dynamic>> resepList = [
      {"thumbnail": "kentangGoreng.jpeg"}
    ];

    List<List<dynamic>> kategories = [
      ['Sarapan', true],
      ['Siang', false],
      ['Malam', false],
      ['Cemilan', true],
      ['Minuman', false],
      ['Cemilan', false],
    ];

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 85.0),
            child: AppBarUI()),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavbarUI(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: lbr,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Cari resep makanan..",
                      hintStyle: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 105, 103, 103),
                          fontSize: 16),
                      contentPadding: EdgeInsets.all(0),
                      icon: FaIcon(
                        FontAwesomeIcons.search,
                        color: Colors.grey,
                        size: 16,
                      ),
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 105, 103, 103),
                        fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: lbr,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15),
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "Kategori",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 95, 93, 93),
                      fontSize: 18),
                ),
              ),
              Container(
                width: lbr,
                height: 50,
                margin: EdgeInsets.only(left: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  itemCount: kategories.length,
                  itemBuilder: (context, index) {
                    return KategoriMakanan(
                      kategori: kategories[index][0],
                      aktif: kategories[index][1],
                    );
                  },
                ),
              ),
              Container(
                width: lbr,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15),
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "Resep Cemilan",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 95, 93, 93),
                      fontSize: 18),
                ),
              ),
              Container(
                width: lbr * 95 / 100,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 15),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  runSpacing: 10,
                  spacing: 10,
                  children: [
                    ResepItem(
                      lbr: lbr,
                      img: "nasiGoreng.jpeg",
                      namaMenu: "Nasi Goreng Mantap",
                      waktu: 15,
                      anggaran: "10.000",
                    ),
                    ResepItem(
                      lbr: lbr,
                      img: "kentangGoreng.jpeg",
                      namaMenu: "Kentang Goreng Bakar",
                      waktu: 15,
                      anggaran: "50.000",
                    ),
                    ResepItem(
                      lbr: lbr,
                      img: "martabak.jpeg",
                      namaMenu: "Miftahul Haq 1915016191",
                      waktu: 25,
                      anggaran: "30.000",
                    ),
                    ResepItem(
                      lbr: lbr,
                      img: "gadoGado.jpeg",
                      namaMenu: "Gado-gado Bumbu Kacang",
                      waktu: 20,
                      anggaran: "20.000",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class KategoriMakanan extends StatelessWidget {
  final String kategori;
  final bool aktif;

  const KategoriMakanan({
    Key? key,
    required this.kategori,
    required this.aktif,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color warna_kategori = Colors.grey;
    if (aktif == true) {
      warna_kategori = Colors.green.shade300;
    }
    return Container(
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.only(left: 15, right: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(73, 157, 60, 0.2),
      ),
      child: Text(
        "${kategori}",
        style: GoogleFonts.poppins(
            color: warna_kategori, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class ResepItem extends StatelessWidget {
  final String img, namaMenu, anggaran;
  final int waktu;
  const ResepItem({
    Key? key,
    required this.lbr,
    required this.img,
    required this.namaMenu,
    required this.waktu,
    required this.anggaran,
  }) : super(key: key);

  final double lbr;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: lbr * 45 / 100,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: AssetImage("assets/images/${img}"), fit: BoxFit.fill)),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(top: 5, right: 8),
                width: lbr * 45 / 100,
                height: 50,
                child: Container(
                  alignment: Alignment.center,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.bookmark,
                    size: 20,
                    color: Colors.grey[50],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(5),
                width: lbr * 45 / 100,
                height: 95,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${namaMenu}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 15, height: 1.4),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 3, left: 5),
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.clock,
                                color: Colors.white,
                                size: 12,
                              ),
                              Text(" ${waktu} menit",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300))
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 1, left: 5),
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.coins,
                                color: Colors.white,
                                size: 12,
                              ),
                              Text(" Rp ${anggaran}",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
