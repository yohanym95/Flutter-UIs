import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmOrder extends StatefulWidget {
  @override
  _ConfirmOrderState createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  TextEditingController addressline1 = TextEditingController();
  TextEditingController addressline2 = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController province = TextEditingController();
  TextEditingController postalcode = TextEditingController();
  TextEditingController contactNo = TextEditingController();
  TextEditingController note = TextEditingController();

  bool changeLocation = false;

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
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Confirm Order',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            fontStyle: FontStyle.normal,
                            fontSize: 28,
                            color: Color(0xFF407704),
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2)),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                image: AssetImage('assets/images/image1.jpg'),
                              ),
                            )),
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(left: 17),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 9),
                                  child: Text('Item Name',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text('Rs. 1,000',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 14),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text('Your Details',
                              style: GoogleFonts.montserrat(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xFF407704),
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                        Expanded(
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.location_on,
                                color: Color(0xFF407704),
                              )),
                        )
                      ],
                    ),
                  ),
                  TextFormField(
                    controller: addressline1,
                    decoration: InputDecoration(
                      labelText: 'Address Line 1',
                      labelStyle: GoogleFonts.montserrat(
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Color(0xFF407704),
                          fontWeight: FontWeight.w400,
                          height: 1.5),
                      errorStyle: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: addressline2,
                    decoration: InputDecoration(
                      labelText: 'Address Line 2',
                      labelStyle: GoogleFonts.montserrat(
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Color(0xFF407704),
                          fontWeight: FontWeight.w400,
                          height: 1.5),
                      errorStyle: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: city,
                          decoration: InputDecoration(
                            labelText: 'City',
                            labelStyle: GoogleFonts.montserrat(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xFF407704),
                                fontWeight: FontWeight.w400,
                                height: 1.5),
                            errorStyle: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: province,
                          decoration: InputDecoration(
                            labelText: 'Province',
                            labelStyle: GoogleFonts.montserrat(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xFF407704),
                                fontWeight: FontWeight.w400,
                                height: 1.5),
                            errorStyle: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: postalcode,
                          decoration: InputDecoration(
                            labelText: 'Postal Code',
                            labelStyle: GoogleFonts.montserrat(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xFF407704),
                                fontWeight: FontWeight.w400,
                                height: 1.5),
                            errorStyle: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: contactNo,
                          decoration: InputDecoration(
                            labelText: 'Contact No',
                            labelStyle: GoogleFonts.montserrat(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xFF407704),
                                fontWeight: FontWeight.w400,
                                height: 1.5),
                            suffixIcon: Icon(Icons.call_outlined,
                                color: Color(0xFF407704)),
                            errorStyle: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text('Note (Optional)',
                              style: GoogleFonts.montserrat(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xFF407704),
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                        Expanded(
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.description,
                                color: Color(0xFF407704),
                              )),
                        )
                      ],
                    ),
                  ),
                  TextFormField(
                    controller: note,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 25, bottom: 10),
                    width: double.maxFinite,
                    child: MaterialButton(
                      splashColor: Colors.purple,
                      onPressed: () {
                        setState(() {
                          if (changeLocation) {
                            changeLocation = false;
                          } else {
                            changeLocation = true;
                          }
                        });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      highlightElevation: 0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: changeLocation
                                    ? Text(
                                        'Change Your Location (Optional)',
                                        style: GoogleFonts.montserrat(
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    : Text(
                                        'Add Your Location (Optional)',
                                        style: GoogleFonts.montserrat(
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )),
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  )))
                        ],
                      ),
                      color: Color(0xFF91C220),
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
                        print(addressline1.text);
                        print(addressline2.text);
                        print(city.text);
                        print(province.text);
                        print(postalcode.text);
                        print(contactNo.text);
                        print(note.text);
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
}
