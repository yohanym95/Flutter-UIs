import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Forum extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  TextEditingController comment = TextEditingController();

  String pos = "";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
                      child: Text('AyuSeek Forum',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.normal,
                              fontSize: 28,
                              color: Color(0xFF407704),
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.2)),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Chip(
                                  elevation: 8,
                                  backgroundColor: Color(0xFF91C220),
                                  label: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(7, 0, 7, 0),
                                    child: Text('Forum Home',
                                        style: GoogleFonts.montserrat(
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  )),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Chip(
                              elevation: 8,
                              backgroundColor: Color(0xFF91C220),
                              label: Padding(
                                padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                child: Text('My Posts',
                                    style: GoogleFonts.montserrat(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    )),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Chip(
                              elevation: 8,
                              backgroundColor: Color(0xFF91C220),
                              label: Padding(
                                padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                child: Text('Create Post',
                                    style: GoogleFonts.montserrat(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    )),
                              )),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      height: height - 150,
                      child: ListView.builder(
                          physics: AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 4,
                          itemBuilder: (context, i) {
                            return getCommentCard(i);
                          }),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getCommentCard(int i) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 3, 10, 3),
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text('Name',
                          style: GoogleFonts.montserrat(
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                  ),
                  Container(
                    child: Text('2020/07/12',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserrat(
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  child: Text('Contact Herb Seller',
                      style: GoogleFonts.montserrat(
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  child: Text(
                      'You Can give your own flyer or ask us to desgin a cover for you. Select the option you want.',
                      style: GoogleFonts.montserrat(
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      )),
                ),
              ),
              pos == i.toString()
                  ? TextFormField(
                      controller: comment,
                    )
                  : SizedBox(
                      width: 0,
                      height: 0,
                    ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  color: Color(0xFF91C220),
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 6, left: 6, top: 4, bottom: 4),
                    child: Text(
                      'Add Comment',
                      style: GoogleFonts.montserrat(
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      pos = i.toString();
                    });
                  },
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
