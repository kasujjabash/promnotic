import 'package:flutter/material.dart';
import 'package:promnotic/Screen/terms_and_conditions.dart';
import 'package:promnotic/componets/menu_tile.dart';
import '../Screen/advertiser_guideline.dart';
import '../Screen/faq.dart';
import '../Screen/my_deals.dart';
import '../Screen/profile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //Brand logo
              const DrawerHeader(
                  child: Icon(
                Icons.shop,
                size: 65,
              )),
              const SizedBox(
                height: 30,
              ),
              // Menu my deals
              MenuTile(
                  text: 'My Deals',
                  icon: Icons.macro_off,
                  onTap: () {
                    //pop the drawer
                    Navigator.pop(context);
                    // go to the page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyDeals(),
                      ),
                    );
                  }),
              //advertER guidline
              MenuTile(
                  text: 'Advertiser Guideline',
                  icon: Icons.error_outline,
                  onTap: () {
                    //pop the drawer
                    Navigator.pop(context);
                    // go to the page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdvertiserGuideline(),
                      ),
                    );
                  }),
              //frequently asked questions
              MenuTile(
                  text: 'FAQs',
                  icon: Icons.error_outline,
                  onTap: () {
                    //pop the drawer
                    Navigator.pop(context);
                    // go to the page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FrequentlyAskedQuestions(),
                      ),
                    );
                  }),
              //terms and conditions
              MenuTile(
                  text: 'Terms and conditions',
                  icon: Icons.error_outline,
                  onTap: () {
                    //pop the drawer
                    Navigator.pop(context);
                    // go to the page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TermAndConditions(),
                      ),
                    );
                  }),
              //profile
              MenuTile(
                  text: 'Profile',
                  icon: Icons.person_outlined,
                  onTap: () {
                    //pop the drawer
                    Navigator.pop(context);
                    // go to the page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Profile(),
                      ),
                    );
                  }),
            ],
          ),
          // logo out
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MenuTile(
              text: 'Logo out',
              icon: Icons.logout_outlined,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyDeals(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
