import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  var name = "";
  final controller = TextEditingController();

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    name = args['name'] ?? '';
    controller.text = name;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              Text(
                "Name: $name"
              ),
              TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: "Tulis Nama"
                ),
              ),
              FilledButton(
                onPressed: () {
                  Navigator.pop(context, controller.text);
                }, 
                child: Text("Simpan")
              )
            ],
          ),
        ),
      ),
    );
  }
}