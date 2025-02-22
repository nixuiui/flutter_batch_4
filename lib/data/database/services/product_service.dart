import 'package:drift/drift.dart';
import 'package:flutter_batch_4/data/database/app_db.dart';

class ProductService {

  late final AppDatabase db;

  ProductService(this.db);

  Future<void> addProduct({
    required String name,
    required double price,
  }) async {
    final data = ProductsCompanion(
      name: Value(name),
      price: Value(price),
    );
    await db.into(db.products).insert(data);
  }

  Future<List<Product>> getAllProducts() async {
    final query = db.select(db.products);
    final data = await query.get();
    return data;
  }

  Future<void> updateProduct({
    required int id,
    required String name,
    required double price,
  }) async {
    final data = ProductsCompanion(
      name: Value(name),
      price: Value(price),
    );
    await (
      db.update(db.products)
        ..where((e) => e.id.equals(id))
    ).write(data);
  }

  Future<void> delete(int id) async {
    await (db.delete(db.products)..where((e) => e.id.equals(id))).go();
  }

}