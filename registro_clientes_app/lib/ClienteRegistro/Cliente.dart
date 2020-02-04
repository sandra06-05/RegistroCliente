import 'dart:convert';

List<Cliente> clienteFromJson(String str) => List<Cliente>.from(json.decode(str).map((x) => Cliente.fromJson(x)));

String clienteToJson(List<Cliente> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cliente {
  String nombre;
  String contrasenia;
  String apellidos;
  String telefono;
  String correo;

  Cliente({
    this.nombre,
    this.contrasenia,
    this.apellidos,
    this.telefono,
    this.correo,
  });

  factory Cliente.fromJson(Map<String, dynamic> json) => Cliente(
    nombre: json["nombre"],
    contrasenia: json["contrasenia"],
    apellidos: json["apellidos"],
    telefono: json["telefono"],
    correo: json["correo"],
  );

  Map<String, dynamic> toJson() => {
    "nombre": nombre,
    "contrasenia": contrasenia,
    "apellidos": apellidos,
    "telefono": telefono,
    "correo": correo,
  };
}