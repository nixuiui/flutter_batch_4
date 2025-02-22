import 'package:flutter/material.dart';
import 'package:flutter_batch_4/data/database/app_db.dart';
import 'package:flutter_batch_4/data/database/services/product_service.dart';
import 'package:flutter_batch_4/pages/day7/product_form.dart';
import 'package:flutter_batch_4/utils/extensions/context_extentions.dart';
import 'package:flutter_batch_4/utils/singleton.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  final productDb = ProductService(getIt.get());
  List<Product> products = [];

  @override
  void initState() {
    getProducts();
    super.initState();
  }

  void getProducts() async {
    final data = await productDb.getAllProducts();
    setState(() {
      products = data;
    });
  }

  void deleteProduct(int id) async {
    await productDb.delete(id);
    getProducts();
  }

  void openForm({
    Product? product
  }) async {
    await context.dialog(Dialog(
      insetPadding: EdgeInsets.all(16),
      child: ProductForm(
        product: product,
      ),
    ));
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produk"),
        actions: [
          IconButton(
            onPressed: openForm, 
            icon: Icon(Icons.add)
          )
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(products[index].name ?? ''),
          subtitle: Text(products[index].price.toString()),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () => openForm(
                  product: products[index]
                ), 
                icon: Icon(Icons.edit)
              ),
              IconButton(
                onPressed: () => deleteProduct(products[index].id), 
                icon: Icon(Icons.delete)
              ),
            ],
          ),
        ), 
      ),
    );
  }
}