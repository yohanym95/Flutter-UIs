import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaidAds extends StatefulWidget {
  // const PaidAds({ Key? key }) : super(key: key);

  @override
  _PaidAdsState createState() => _PaidAdsState();
}

class _PaidAdsState extends State<PaidAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: new BoxDecoration(
              color: Color(0xFF91C220),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: new Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 15, left: 5),
                      alignment: Alignment.centerLeft,
                      child: Text('My Paid Ads',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.normal,
                              fontSize: 28,
                              color: Color(0xFF407704),
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.2)),
                    ),
                    getPaidCard('In Review', 'DarkGreen'),
                    getPaidCard('Live', 'LightGreen'),
                    getPaidCard('Expired', 'Red'),
                    getPaidCard('Need Payment', 'Yellow'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getPaidCard(String status, String color) {
    Color colorstatus = Color(0xFF407704);
    if (color == 'DarkGreen') {
      colorstatus = Color(0xFF407704);
    } else if (color == 'LightGreen') {
      colorstatus = Color(0xFF91C220);
    } else if (color == 'Red') {
      colorstatus = Color(0xFFF67A52);
    } else if (color == 'Yellow') {
      colorstatus = Color(0xFFEDC22B);
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 3, 0, 3),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text('Ad ID - 1',
                        style: GoogleFonts.montserrat(
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        )),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Container(
                      child: Text(status,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            color: colorstatus,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Chip(
                        backgroundColor: Color(0xFF91C220),
                        label: Padding(
                          padding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
                          child: Text('View',
                              style: GoogleFonts.montserrat(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              )),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
