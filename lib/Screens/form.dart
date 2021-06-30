import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  final String user_id,
      Form_id,
      Name,
      Department,
      Academic_year,
      Year,
      User_from,
      Bus_fees,
      Paid_fees;
  FormScreen(
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
      Acknowledgement})
      : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  String pf;
  String ack;
  String resp;
  @override
  void initState() {}

  Future Submit() async {
    var url = "https://buspassnivi.000webhostapp.com/update.php";
    var data = {
      "form_id": widget.Form_id,
      "Paid_fees": pf,
      "Acknowledgement": ack,
      "response": resp
    };

    print(data);
    var res = await http.post(url, body: data);

    if (res.statusCode == 200) {
      var message = jsonDecode(res.body);
      print(message);
    } else {
      print('Request failed with status : ${res.statusCode}.');
      Fluttertoast.showToast(msg: "Please check your network connection");
    }

    var dat = jsonDecode(res.body);
    String dataa = dat.toString();

    if (dataa == "true") {
      Fluttertoast.showToast(msg: "Form Updated");
    } else {
      if (dataa == "false") {
        Fluttertoast.showToast(
            msg: "Oops! Something went wrong. Please try again later");
      } else {
        Fluttertoast.showToast(msg: "Error");
      }
    }
  }

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
                        /* Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Center(
                              child: Text(
                            "OFFICE USE ONLY",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              //fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          )),
                        ),
                        SizedBox(height: size.height * 0.03),*/
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
                            borderRadius: new BorderRadius.circular(6.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: AlignmentDirectional.centerStart,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: DropdownButton(
                            hint: pf == null
                                ? Text('Fees')
                                : Text(
                                    pf,
                                    style: TextStyle(color: Colors.black),
                                  ),
                            isExpanded: true,
                            iconSize: 30.0,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            items: ['9000', '12000', '15000'].map(
                              (val) {
                                return DropdownMenuItem<String>(
                                  value: val,
                                  child: Text(val),
                                );
                              },
                            ).toList(),
                            onChanged: (val) {
                              setState(() {
                                pf = val;
                              });
                            },
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
                            borderRadius: new BorderRadius.circular(6.0),
                            color: Color(0x262561FA),
                          ),
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: TextFormField(
                            decoration: InputDecoration(),
                            validator: (val) => val.isEmpty
                                ? 'Please enter acknowledgement'
                                : null,
                            onSaved: (val) => ack = val,
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          child: new Row(children: <Widget>[
                            new RaisedButton(
                              //onPressed: _submit,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(0),
                              onPressed: () {
                                final form = formKey.currentState;
                                resp = "SUBMIT";
                                if (form.validate()) {
                                  form.save();
                                  if (pf == null) {
                                    Fluttertoast.showToast(
                                        msg: "Please fill paid fees");
                                  } else {
                                    Submit();
                                  }
                                }
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 35.0,
                                width: size.width * 0.25,
                                decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(80.0),
                                    gradient: new LinearGradient(colors: [
                                      Color.fromARGB(255, 0, 0, 160),
                                      Color.fromARGB(255, 0, 0, 233)
                                    ])),
                                padding: const EdgeInsets.all(0),
                                child: Text(
                                  "SUBMIT",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            new RaisedButton(
                              //onPressed: _submit,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(0),
                              onPressed: () {
                                final form = formKey.currentState;
                                resp = "REJECT";
                                if (form.validate()) {
                                  form.save();
                                  if (pf == null) {
                                    Fluttertoast.showToast(
                                        msg: "Please fill paid fees");
                                  } else {
                                    Submit();
                                  }
                                }
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 35.0,
                                width: size.width * 0.25,
                                decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(80.0),
                                    gradient: new LinearGradient(colors: [
                                      Color.fromARGB(255, 0, 0, 160),
                                      Color.fromARGB(255, 0, 0, 233)
                                    ])),
                                padding: const EdgeInsets.all(0),
                                child: Text(
                                  "REJECT",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            new RaisedButton(
                              //onPressed: _submit,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(0),
                              onPressed: () {
                                final form = formKey.currentState;
                                resp = "DELETE";
                                if (form.validate()) {
                                  form.save();
                                  if (pf == null) {
                                    Fluttertoast.showToast(
                                        msg: "Please fill paid fees");
                                  } else {
                                    Submit();
                                  }
                                }
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 35.0,
                                width: size.width * 0.25,
                                decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(80.0),
                                    gradient: new LinearGradient(colors: [
                                      Color.fromARGB(255, 0, 0, 160),
                                      Color.fromARGB(255, 0, 0, 233)
                                    ])),
                                padding: const EdgeInsets.all(0),
                                child: Text(
                                  "DELETE",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(height: size.height * 0.05),
                      ]),
                ]))));
  }
}
