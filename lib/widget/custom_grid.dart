


import 'package:flutter/material.dart';
import 'custom_card.dart';

class CustomGrid extends StatelessWidget {
  const CustomGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount;

    if (screenWidth < 768) {
      // Mobile Screen item
      crossAxisCount = 2;
    } else if (screenWidth < 1024) {
      // Tablet Screen Item
      crossAxisCount = 3;
    } else {

      // Desktop and Web Screen item
      crossAxisCount = 4;
    }


    List<Map<String, String>> imageLink = [
      {
        'country': 'Bangladesh',
        'flag': 'https://flagcdn.com/w320/bd.png',
        'description': 'A South Asian country with a rich cultural heritage.'
      },
      {
        'country': 'Saudi Arabia',
        'flag': 'https://flagcdn.com/w320/sa.png',
        'description': 'The birthplace of Islam and home to Mecca and Medina.'
      },
      {
        'country': 'Indonesia',
        'flag': 'https://flagcdn.com/w320/id.png',
        'description': 'The world’s largest Muslim-majority country by population.'
      },
      {
        'country': 'Pakistan',
        'flag': 'https://flagcdn.com/w320/pk.png',
        'description': 'A South Asian country with a diverse culture and history.'
      },
      {
        'country': 'Turkey',
        'flag': 'https://flagcdn.com/w320/tr.png',
        'description': 'A transcontinental country bridging Europe and Asia.'
      },
      {
        'country': 'Iran',
        'flag': 'https://flagcdn.com/w320/ir.png',
        'description': 'Known for its ancient Persian civilization and culture.'
      },
      {
        'country': 'Iraq',
        'flag': 'https://flagcdn.com/w320/iq.png',
        'description': 'Home to Mesopotamia, one of the earliest civilizations.'
      },
      {
        'country': 'Egypt',
        'flag': 'https://flagcdn.com/w320/eg.png',
        'description': 'Famous for its ancient pyramids and Nile river.'
      },
      {
        'country': 'Afghanistan',
        'flag': 'https://flagcdn.com/w320/af.png',
        'description': 'A mountainous country with rich tribal culture.'
      },
      {
        'country': 'Malaysia',
        'flag': 'https://flagcdn.com/w320/my.png',
        'description': 'A Southeast Asian country known for its diverse population.'
      },
      {
        'country': 'Morocco',
        'flag': 'https://flagcdn.com/w320/ma.png',
        'description': 'A North African country with vibrant culture and history.'
      },
      {
        'country': 'Algeria',
        'flag': 'https://flagcdn.com/w320/dz.png',
        'description': 'The largest country in Africa by land area.'
      },
      {
        'country': 'United Arab Emirates',
        'flag': 'https://flagcdn.com/w320/ae.png',
        'description': 'Known for modern cities like Dubai and Abu Dhabi.'
      },
      {
        'country': 'Sudan',
        'flag': 'https://flagcdn.com/w320/sd.png',
        'description': 'Located in Northeast Africa with a rich history.'
      },
      {
        'country': 'Qatar',
        'flag': 'https://flagcdn.com/w320/qa.png',
        'description': 'A wealthy Gulf country known for its natural gas reserves.'
      },
      {
        'country': 'Oman',
        'flag': 'https://flagcdn.com/w320/om.png',
        'description': 'Known for its desert landscape and historic forts.'
      },
      {
        'country': 'Jordan',
        'flag': 'https://flagcdn.com/w320/jo.png',
        'description': 'Home to the ancient city of Petra and the Dead Sea.'
      },
      {
        'country': 'Kuwait',
        'flag': 'https://flagcdn.com/w320/kw.png',
        'description': 'A small Gulf nation with rich oil reserves.'
      },
      {
        'country': 'Yemen',
        'flag': 'https://flagcdn.com/w320/ye.png',
        'description': 'A country on the Arabian Peninsula with ancient heritage.'
      },
      {
        'country': 'Libya',
        'flag': 'https://flagcdn.com/w320/ly.png',
        'description': 'Located in North Africa with vast desert regions.'
      },
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.75,
      ),
      itemCount: imageLink.length,
      itemBuilder: (context, index) {
        return CustomCard(imageData: imageLink[index]);
      },
    );
  }
}
