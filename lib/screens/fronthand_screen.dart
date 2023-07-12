import 'package:flutter/material.dart';

class FronthandScreen extends StatefulWidget {
  const FronthandScreen({Key? key}) : super(key: key);

  @override
  State<FronthandScreen> createState() => _FronthandScreenState();
}
List<String> images = [
  "assets/images/indian 1.jpg",
  "assets/images/indian 2.jpg",
  "assets/images/indian 3.png",
  "assets/images/indian 4.jpg",
  "assets/images/indian 5.png",
  "assets/images/indian 6.jpg",
  "assets/images/indian 7.png",
  "assets/images/indian 8.webp",
  "assets/images/indian 9.webp",
  "assets/images/indian 10.webp",
  "assets/images/indian 11.png",
  "assets/images/indian 12.jpg",
  "assets/images/indian 13.jpg",
  "assets/images/indian 14.jpg",
  "assets/images/indian 15.jpeg",
  "assets/images/indian 16.jpg",
];
class _FronthandScreenState extends State<FronthandScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            'FrontHand Design',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        // body: Container(
        //   padding: const EdgeInsets.all(12.0),
        //   decoration: const BoxDecoration(
        //   borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(20),
        //   bottomLeft: Radius.circular(20),
        //   topRight: Radius.circular(50),
        //   bottomRight: Radius.circular(50)
        //       ),
        //   ),
        //   child: GridView.builder(
        //       itemCount: images.length,
        //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 3,
        //         crossAxisSpacing: 5.0,
        //         mainAxisSpacing: 5.0,
        //       ),
        //       itemBuilder: (BuildContext context, int index) {
        //           return Image.asset(images[index]);
        //     },
        //   ),
        // )

        body: GridView.builder(
          //shrinkWrap: true,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    color: Colors.grey[900],
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    clipBehavior: Clip.antiAlias, //
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 1 / 1,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FullScreenImageScreen(
                                        image: images[index],
                                      ),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  images[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]);
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
        ));
  }
}


class FullScreenImageScreen extends StatelessWidget {
  final String image;

  FullScreenImageScreen({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: const [
          Icon(Icons.share),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.save_alt),
          )
        ],
      ),
      body: Center(
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}