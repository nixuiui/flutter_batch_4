import 'package:flutter/material.dart';
import 'package:flutter_batch_4/pages/day5/contact_page.dart';
import 'package:flutter_batch_4/utils/extensions/context_extentions.dart';
import 'package:flutter_batch_4/utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var name = "Dimas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            Text(
              "Name: $name",
              style: TextStyle(
                fontSize: 32
              ),
            ),
            FilledButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context, 
                  AppRoutes.profile,
                  arguments: {
                    "name": name
                  }
                );
                if(result != null) {
                  setState(() {
                    name = result as String;
                  });
                }
              }, 
              child: Text("Profile Page")
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.setting);
              }, 
              child: Text("Setting Page")
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.contact);
              }, 
              child: Text("Contact Page")
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.navbar);
              }, 
              child: Text("Navbar Page")
            ),
            FilledButton(
              onPressed: () {
                context.push(ContactPage());
              }, 
              child: Text("Transition Navigate")
            )
          ],
        ),
      ),
    );
  }
}