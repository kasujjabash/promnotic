import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:promnotic/models/ads.dart';
import '../componets/adverts_tile.dart';
import '../componets/my_textfield.dart';
import 'details_page.dart';
import 'form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: const Text('Promnotic'),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.person,
              size: 30,
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      // const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            //search bar
            const MyTextField(
              hintText: 'Search ads',
            ),
            //categories
            //top picks
            const SizedBox(
              height: 20,
            ),
            //Latesr adds
            const Text(
              'Latest Ads',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            //ads tile
            Expanded(
              child: ListView.builder(
                itemCount: Advertisment().adverts.length,
                itemBuilder: (context, index) {
                  final adverts = Advertisment().adverts[index];
                  return AdvertsTile(
                    adverts: adverts,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (contex) => DetailsScreen(
                          advert: adverts,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AdvertForm())),
        child: const Icon(Icons.add),
      ),
    );
  }
}
