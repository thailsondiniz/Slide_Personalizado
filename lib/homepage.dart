import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> pages = [
    {
      'image': 'https://ouch-cdn2.icons8.com/LXMRCrykXjLygy1NxQT2K1Na4ISKe_yZYanIDgfv6qk/rs:fit:256:306/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMjIv/MmY4NTU3MjQtMWYy/Mi00OTM2LThiZGIt/ODRmMDEyODJjYjlh/LnBuZw.png',
    },
    {
      'image': 'https://ouch-cdn2.icons8.com/0vyDeQUlptmnmoPYVdibAbMGPv_Co_cAoIF3TNAHMe8/rs:fit:256:336/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODAz/LzUzYWNlMjRlLTUz/MGItNGQ1MC05MTlk/LTY2ZWVjZjY3NDFk/Ni5wbmc.png',
    },
    {
      'image': 'https://ouch-cdn2.icons8.com/TxmNrDaQ0F6JQWfK8TnqRV_y1zYlXiFBeH9BumukWOU/rs:fit:256:233/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjMz/LzY0NDgxOGFkLTdk/ZWMtNDNjZi05ODZj/LTUyYWJiY2I4Zjk2/Mi5wbmc.png',
    },
    {
      'image': 'https://ouch-cdn2.icons8.com/PilwwpshznlYCvvf-WNFepeB5T2L4qZ5yKPUtoj2JAI/rs:fit:256:167/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNzk3/L2VhNTFkMDFhLWQ3/YjAtNDNjYS05MDg4/LTRjNjE3NzI2ZjZi/NC5wbmc.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: ConcentricPageView(
        radius:30,
        verticalPosition: 0.85,
        colors: [Colors.white, Colors.blueAccent, Colors.pinkAccent, Colors.deepPurple], itemBuilder: (int index) {
        int pageIndex = (index % pages.length);
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(pages[pageIndex]['image'],),
            ],
          ),
        );
        
        },
        
         ),
         
    );
  }
}