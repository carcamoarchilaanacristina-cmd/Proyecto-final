class Producto {
  final int? id;
  final String nombre;
  final double precio;
  final int stockActual;
  final String? fotoPath;

  Producto({
    this.id,
    required this.nombre,
    required this.precio,
    required this.stockActual,
    this.fotoPath,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'precio': precio,
      'stock_actual': stockActual,
      'foto_path': fotoPath,
    };
  }

  factory Producto.fromMap(Map<String, dynamic> map) {
    return Producto(
      id: map['id'] as int?,
      nombre: map['nombre'] as String,
      precio: (map['precio'] as num).toDouble(),
      stockActual: map['stock_actual'] as int,
      fotoPath: map['foto_path'] as String?,
    );
  }
}