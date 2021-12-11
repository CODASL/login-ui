import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String email;
  final String password;
  const Home({Key? key, required this.email, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DataColumn> _dataColumns = [
      const DataColumn(label: Text("Email")),
      const DataColumn(label: Text("Password")),
    ];
    List<DataRow> _datarows = [
      DataRow(cells: [
        DataCell(Text(email)),
        DataCell(Text(password)),
      ])
    ];
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Login Home"),
        ),
        body: DataTable(
          
          columns: _dataColumns,
          rows: _datarows,
        ));
  }
}


