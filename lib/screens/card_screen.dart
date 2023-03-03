import 'package:flutter/material.dart';
import '../widgets/widges.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1.jpg'),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6_4x3.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://cdnb.artstation.com/p/assets/covers/images/051/898/847/large/luke-wells-luke-wells-luke-wells-landscape-midjourney.jpg?1658432056',
                name: 'Un hermoso paisaje'),
            SizedBox(
              height: 100,
            ),
          ]),
    );
  }
}
