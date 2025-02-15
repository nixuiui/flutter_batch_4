import 'package:flutter/material.dart';
import 'package:flutter_batch_4/pages/day5/sample_1_page.dart';
import 'package:flutter_batch_4/utils/extensions/context_extentions.dart';
import 'package:flutter_batch_4/widgets/sample_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _countDown = 100;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _countDown--;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.home_rounded,
              size: 40,
            )
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$_countDown',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SampleWidget(
              name: "Niki",
              day: 1,
              onTap: () {
                print("Click on Tap");
              },
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 32,
              ),
              margin: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(width: 5, color: Colors.red),
                borderRadius: BorderRadius.circular(32)
              ),
              child: Image.network(
                "https://cdn1-production-images-kly.akamaized.net/EeIWaeartycQaEWd1EU7XkonrHI=/800x450/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3393817/original/037871600_1614928316-kuda2021.jpg",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () async {
                    final result = await context.push<String>(Sample1Page(
                      title: "Ini halaman pertama",
                    ));
                    if(result != null) {
                      if(context.mounted) {
                        context.dialog(AlertDialog(
                          title: Text("Berhasil"),
                          content: Text(result),
                        ));
                      }
                    }
                  }, 
                  child: Text("Go to Sample 1 Page")
                ),
                OutlinedButton(
                  onPressed: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Sample1Page(
                      title: "Replace Page"
                    ))
                  ), 
                  child: Text("Filled Button")
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: items
      // ),
    );
  }
}
