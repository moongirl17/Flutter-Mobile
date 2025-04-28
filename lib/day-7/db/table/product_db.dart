import '../table/app_db.dart';


class ProductDb {
  final AppDatabase db;
  
  ProductDb(this.db);

  Future<void> addProduct(ProductTableCompanion data) async {
    await db.into(db.productTable).insert(data);
  }

  Future<List<ProductTableData>> getAllProducts() async {
    return await db.select(db.productTable).get();
  }
  Future<List<ProductTableData>> getProductById(int id) async {
    return await (db.select(db.productTable)..where((tbl) => tbl.id.equals(id))).get();
  }
  Future<void> updateProduct(ProductTableCompanion data) async {
    await db.update(db.productTable).replace(data);
  }
  Future<void> deleteProduct(int id) async {
    await (db.delete(db.productTable)..where((tbl) => tbl.id.equals(id))).go();
  }
  Future<void> deleteAllProducts() async {
    await db.delete(db.productTable).go();
  }

}
