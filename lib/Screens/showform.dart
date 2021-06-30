import 'package:flutter/material.dart';

class FormSc extends StatefulWidget {
  final String user_id,
      Form_id,
      Name,
      Department,
      Academic_year,
      Year,
      User_from,
      Bus_fees,
      Paid_fees,
      Acknowledgement;
  FormSc(
      {Key key,
      @required this.user_id,
      this.Form_id,
      this.Name,
      this.Department,
      this.Academic_year,
      this.Year,
      this.User_from,
      this.Bus_fees,
      this.Paid_fees,
      this.Acknowledgement})
      : super(key: key);

  @override
  _FormScState createState() => _FormScState();
}

class _FormScState extends State<FormSc> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
        appBar: AppBar(
          title: Text("Form"),
        ),
        key: scaffoldKey,
        body: SingleChildScrollView(
            child: Form(
                key: formKey,
                child: Stack(children: <Widget>[
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 40),
                          child: Text(
                            "BUSPASS FORM",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2661FA),
                                fontSize: 28),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Form ID",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            widget.Form_id,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Name",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            widget.Name,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Department",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            widget.Department,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Academic Year",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            widget.Academic_year,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Year",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            widget.Year,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "From",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            widget.User_from,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "To",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          height: 50,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(6.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "INDRA GANESAN COLLEGE OF ENGINEERING",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Bus fees",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            widget.Bus_fees,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "______________________",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Paid Fees",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            widget.Paid_fees,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Acknowledgement",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            widget.Acknowledgement,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                      ]),
                ]))));
  }
}
