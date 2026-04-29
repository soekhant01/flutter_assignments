import 'package:flutter/material.dart';

class TikTokUi extends StatelessWidget {
  const TikTokUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.network(
              "https://fastly.picsum.photos/id/393/800/1200.jpg?hmac=4P95wSeLjHalMCDHsf6AYOSNSm-IgvNjfxD2q3iHN30",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "For You",
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 16,

              bottom: 100,
              child: Column(
                children: [
                  Column(
                    children: [
                      Icon(Icons.favorite, color: Colors.white, size: 30),
                      Text(
                        "234K",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Column(
                    children: [
                      Icon(Icons.messenger, color: Colors.white, size: 30),
                      Text(
                        "12K",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Column(
                    children: [
                      Icon(Icons.bookmark_sharp, color: Colors.white, size: 30),
                      Text(
                        "Save",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Column(
                    children: [
                      Icon(Icons.share_rounded, color: Colors.white, size: 30),
                      Text(
                        "Share",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 16,

              bottom: 100,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(

                    children: [
                      Text(
                        "photographer",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      OutlinedButton(
                        onPressed: () {},

                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 1.5, color: Colors.white),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 2,
                          ),
                          minimumSize: Size.zero,
                        ),
                        child: Text(
                          "Follow",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        
                      ),
                    ],
                  ),
                  Text("Beautiful Landscape photo #1", style: TextStyle(color: Colors.white),),
                  Text("Original Sound - Photography", style: TextStyle(color: Colors.white),)

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
