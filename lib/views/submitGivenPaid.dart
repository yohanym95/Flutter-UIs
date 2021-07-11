import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class SubmitGivenPaid extends StatefulWidget {
  @override
  _SubmitGivenPaidState createState() => _SubmitGivenPaidState();
}

class _SubmitGivenPaidState extends State<SubmitGivenPaid> {
  String _chosenValue;
  String _chosenMonthValue;
  File _image;
  List<String> options = <String>[
    'Select Type 1',
    'Select Type 2',
    'Select Type 3'
  ];
  List<String> period = <String>['1 Month', '2 Month', '3 Month'];
  TextEditingController description = TextEditingController();
  TextEditingController link = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var fixWidth = width - 54;
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
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 18, 0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 15, left: 5),
                    alignment: Alignment.centerLeft,
                    child: Text('New Paid Ad',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            fontStyle: FontStyle.normal,
                            fontSize: 28,
                            color: Color(0xFF407704),
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2)),
                  ),
                  getDropDown(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      'You Can give your own flyer or ask us to desgin a cover for you. Select the option you want.',
                      style: GoogleFonts.montserrat(
                        fontStyle: FontStyle.normal,
                        fontSize: 10,
                        color: Color(0xFF92949C),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    width: double.maxFinite,
                    child: MaterialButton(
                      splashColor: Colors.purple,
                      onPressed: () {
                        _showPicker(context);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      highlightElevation: 0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Upload Flyer',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                          ),
                          Container(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.upload_outlined,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      color: Color(0xFF91C220),
                    ),
                  ),
                  _image != null
                      ? Stack(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 5),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.file(
                                    _image,
                                    fit: BoxFit.fill,
                                    height: fixWidth,
                                    width: double.infinity,
                                  )),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(2),
                                    alignment: Alignment.topRight,
                                    decoration: new BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _image = null;
                                          });
                                        },
                                        child: new Icon(
                                          Icons.close,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      : SizedBox(
                          width: 0,
                          height: 0,
                        ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: TextFormField(
                      controller: link,
                      decoration: InputDecoration(
                        labelText: 'Link (Optional)',
                        labelStyle: GoogleFonts.montserrat(
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            color: Color(0xFF407704),
                            fontWeight: FontWeight.w400,
                            height: 1.5),
                        suffixIcon: Icon(
                          Icons.info,
                          color: Color(0xFF407704),
                        ),
                        errorStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                  getTimePeriodDropDown(),
                  Container(
                    padding: EdgeInsets.only(
                        top: 17, left: 10, right: 10, bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text('Total',
                              style: GoogleFonts.montserrat(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.2)),
                        ),
                        Expanded(
                          child: Text('Rs. 1,200',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.montserrat(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.2)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      padding: const EdgeInsets.all(0),
                      height: height / 11,
                      onPressed: () {
                        print(link.text);
                        print(_chosenValue);
                        print(_chosenMonthValue);
                      },
                      elevation: 5,
                      child: Text(
                        'Done',
                        style: GoogleFonts.montserrat(
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      color: Color(0xFF91C220),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      padding: const EdgeInsets.all(0),
                      height: height / 11,
                      elevation: 5,
                      onPressed: () {},
                      highlightElevation: 0,
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.montserrat(
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      color: Color(0xFFF77A52),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getDropDown() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: DropdownButton<String>(
        value: _chosenValue,
        style: GoogleFonts.montserrat(
          fontStyle: FontStyle.normal,
          fontSize: 16,
          color: Color(0xFF407704),
          fontWeight: FontWeight.w600,
        ),
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: Color(0xFF407704),
        ),
        isExpanded: true,
        underline: Container(color: Color(0xFF7AA32B), height: 1),
        items: options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        hint: Text("Select Type",
            style: GoogleFonts.montserrat(
              fontStyle: FontStyle.normal,
              fontSize: 16,
              color: Color(0xFF407704),
              fontWeight: FontWeight.w500,
            )),
        onChanged: (String value) {
          setState(() {
            _chosenValue = value;
            print(_chosenValue);
          });
        },
      ),
    );
  }

  Widget getTimePeriodDropDown() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 18),
      child: DropdownButton<String>(
        value: _chosenMonthValue,
        style: GoogleFonts.montserrat(
          fontStyle: FontStyle.normal,
          fontSize: 16,
          color: Color(0xFF407704),
          fontWeight: FontWeight.w600,
        ),
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: Color(0xFF407704),
        ),
        isExpanded: true,
        underline: Container(color: Color(0xFF7AA32B), height: 1),
        items: period.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        hint: Text("1 Month",
            style: GoogleFonts.montserrat(
              fontStyle: FontStyle.normal,
              fontSize: 16,
              color: Color(0xFF407704),
              fontWeight: FontWeight.w500,
            )),
        onChanged: (String value) {
          setState(() {
            _chosenMonthValue = value;
          });
        },
      ),
    );
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                ],
              ),
            ),
          );
        });
  }
}
