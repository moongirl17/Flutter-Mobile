import 'package:drift/drift.dart';

class ProductTable extends Table {

  @override
  String get tableName => 'products'; // Nama tabel
  
  IntColumn get id => integer().autoIncrement()(); // Primary key
  TextColumn get name => text().withLength(min: 1, max: 50)(); // Nama produk
  RealColumn get price => real()(); // Harga produk
  TextColumn get description => text().nullable()(); // Deskripsi produk
  IntColumn get stock => integer().withDefault(Constant(0))(); // Stok produk
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)(); // Tanggal dibuat
  DateTimeColumn get updatedAt => dateTime().nullable()(); // Tanggal diperbarui
}
