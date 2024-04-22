import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:promnotic/models/ads.dart';
import '../componets/adverts_tile.dart';
import '../componets/my_textfield.dart';
import 'form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Promnotic'),
      ),
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
            //ads tile
            Expanded(
                child: ListView.builder(
                    itemCount: Advertisment().adverts.length,
                    itemBuilder: (context, index) {
                      final adverts = Advertisment().adverts[index];
                      return AdvertsTile(adverts: adverts);
                    }))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => AdvertForm())),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: _buildButtomNavBar(context),
    );
  }
}

Widget _buildButtomNavBar(BuildContext context) {
  return Container(
    height: 95,
    decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40))),
    padding: const EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => AdvertForm())),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    ),
  );
}
