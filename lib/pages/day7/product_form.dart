import 'package:flutter/material.dart';
import 'package:flutter_batch_4/data/database/app_db.dart';
import 'package:flutter_batch_4/data/database/services/product_service.dart';
import 'package:flutter_batch_4/utils/extensions/context_extentions.dart';
import 'package:flutter_batch_4/utils/singleton.dart';

class ProductForm extends StatefulWidget {
  
  final Product? product;
  
  const ProductForm({
    super.key,
    this.product
  });

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {

  final productDb = ProductService(getIt.get());
  final nameController = TextEditingController();
  final priceController = TextEditingController();

  @override
  void initState() {
    nameController.text = widget.product?.name ?? '';
    priceController.text = widget.product?.price.toString() ?? '';
    super.initState();
  }

  void saveProduct() async {
    if(widget.product == null) {
      await productDb.addProduct(
        name: nameController.text, 
        price: double.tryParse(priceController.text) ?? 0
      );
    } else {
      await productDb.updateProduct(
        id: widget.product!.id,
        name: nameController.text, 
        price: double.tryParse(priceController.text) ?? 0
      );
    }
    if(mounted) {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Form Produk",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              IconButton(
                onPressed: () => context.pop(), 
                icon: Icon(Icons.close)
              )
            ],
          ),
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: 'Nama Produk'
            ),
          ),
          TextFormField(
            controller: priceController,
            decoration: InputDecoration(
              hintText: 'Harga'
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: saveProduct, 
              child: Text("Simpan")
            ),
          )
        ],
      ),
    );
  }
}