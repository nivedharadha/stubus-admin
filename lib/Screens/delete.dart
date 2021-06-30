import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stubus_admin/Screens/showform.dart';

Future<List> getData() async {
  var url = "https://buspassnivi.000webhostapp.com/deletedform.php";
  final response = await http.get(url);
  var data = jsonDecode(response.body);
  //print(data);
  return data;
}

class deleteform extends StatefulWidget {
  @override
  _deleteformState createState() => _deleteformState();
}

class _deleteformState extends State<deleteform> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms"),
      ),
      body: new FutureBuilder<List>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('Error in Loading' + snapshot.error.toString());
            }
            return snapshot.hasData
                ? new ItemList(list: snapshot.data)
                : new Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;

  const ItemList({Key key, this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return Card(
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FormSc(
                            user_id: list[i]['user_id'],
                            Form_id: list[i]['form_id'],
                            Name: list[i]['Name'],
                            Department: list[i]['Department'],
                            Academic_year: list[i]['Academic_year'],
                            Year: list[i]['Year'],
                            User_from: list[i]['User_from'],
                            Bus_fees: list[i]['Bus_fees'],
                            Paid_fees: list[i]['Paid_fees'],
                            Acknowledgement: list[i]['Acknowledgement'],
                          )));
            },
            leading: CircleAvatar(
                child: Text(
              list[i]['form_id'],
            )
                //list[i]['Nme'].toString().substring(0, 1).toUpperCase()),
                ),
            title: new Text(
              list[i]['Name'],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: new Text(
              list[i]['Submitted_at'],
              style: TextStyle(fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}
