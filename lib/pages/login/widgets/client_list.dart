import 'package:apply_red/pages/login/widgets/input_list_tile.dart';
import 'package:flutter/material.dart';

class ClientList extends StatefulWidget {
  const ClientList({Key? key}) : super(key: key);

  @override
  _ClientList createState() => _ClientList();
}

class _ClientList extends State<ClientList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Listado de Clientes:",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'raleway'),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          InputListTile(title: "Cliente 1", subtitle: "Ingresar Descripción"),
          InputListTile(title: "Cliente 2", subtitle: "Ingresar Descripción"),
          InputListTile(title: "Cliente 3", subtitle: "Ingresar Descripción"),
        ],
      ),
    );
  }
}
