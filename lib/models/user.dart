class User{
  final String id;
  final String nombre;
  final String rol;
  final String user;
  final String pass;
    
User(
  {
    required this.id,
    required this.nombre,
    required this.rol,
    required this.user,
    required this.pass,
  }
);

  factory User.desdeJson(Map<String, dynamic> json) => User(
    id: json['id'],
    nombre: json['nombre'],
    rol: json['rol'],
    user: json['user'],
    pass: json['pass'],
  );


}