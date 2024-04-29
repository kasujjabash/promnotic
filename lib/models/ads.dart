import 'package:flutter/material.dart';

import 'adverts_model.dart';

class Advertisment extends ChangeNotifier {
  //list of adverts
  final List<Advert> _adverts = [
    // adverts 1
    Advert(
        title: '40 Inch DIGITAL FlatScreen TV.',
        description: '40" Inch Black Ark Flat Screen TV. Free to air ',
        imagePath: 'lib/images/beef_chew.jpg',
        quantity: 10,
        price: "890,000",
        
        ),
    // adverts 2
    Advert(
        title: 'Smart phone Iphone 15.',
        description: 'It comes with a brand new cover',
        imagePath: 'lib/images/beef_chew.jpg',
        quantity: 1,
        price: "6.5M"),
    // adverts 3
    Advert(
        title: 'Ray G concert, 14th May 2024',
        description:
            'Early bad tickets are on sale  but not that they are saling out',
        imagePath: 'lib/images/beef_chew.jpg',
        quantity: 1,
        price: "20,000"),
    // adverts 4
    Advert(
        title: 'Zzina beach festive, Forest park buloba',
        description: 'Came enjoy the great exeprience and lots of games',
        imagePath: 'lib/images/beef_chew.jpg',
        quantity: 1,
        price: "20,000"),
    // adverts 5
    Advert(
        title: 'Chairs on sale, And we buy old chairs,',
        description: 'Contacts in my profile, give me ring',
        imagePath: 'lib/images/beef_chew.jpg',
        quantity: 30,
        price: "250,000"),
    // adverts 6
    Advert(
        title: 'Alex collections, Mutundwe',
        description:
            'We are the leading fashon group in uganda, and try on the brand new fashons',
        imagePath: 'lib/images/beef_chew.jpg',
        quantity: 1,
        price: "350,000"),
  ];
  /*
     G E T T E R S
     */
  List<Advert> get adverts => _adverts;

  /*
     O P E R A T I O N S
    
     */
  //create an post an advert
  //add advert to favourates
  //call the advertiser /  seller
  //message the advertiser / seller
  //filter out on search
}
