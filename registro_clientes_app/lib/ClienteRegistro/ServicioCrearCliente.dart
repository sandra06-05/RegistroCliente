import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:registro_clientes_app/ClienteRegistro/Cliente.dart';

final String IP_SERVER = "192.168.1.144";


String url_service = "http://$IP_SERVER:8080/tienda-virtual/srv/clientes/crearCliente";


crearClientePOST(String url, Cliente cliente) async {

  print(url);
  final headers = {'Content-Type': 'application/json'};
  Map<String, dynamic> body = cliente.toJson();
  String jsonBody = json.encode(body);
  final encoding = Encoding.getByName('utf-8');

  http.Response response = await http.post(
    url,
    headers: headers,
    body: jsonBody,
    encoding: encoding,
  );
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  int statusCode = response.statusCode;
  String responseBody = response.body;
}