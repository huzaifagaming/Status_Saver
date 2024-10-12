import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statussaver/Provider/getStatusProvider.dart';
import 'package:statussaver/Screen/BottomNavPages/Image/image_view.dart';
import 'package:statussaver/Utlis/getThumbnails.dart';

class VideoHomePage extends StatefulWidget {
  const VideoHomePage({super.key});

  @override
  State<VideoHomePage> createState() => _VideoHomePageState();
}

class _VideoHomePageState extends State<VideoHomePage> {
  bool _isFetched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<GetStatusProvider>(builder: (context, file, child) {
        if (_isFetched == false) {
          file.getStatus(".jpg");
          Future.delayed(const Duration(microseconds: 1), () {
            _isFetched == true;
          });
        }
        return file.isWhatsappAvailable == false
            ? const Center(
          child: Text("Whatsapp not available"),
        )
            : file.getImages.isEmpty
            ? const Center(
          child: Text("No image available"),
        )
            : Container(
          padding: const EdgeInsets.all(20),
          child: GridView(
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8),
            children: List.generate(file.getImages.length, (index) {
              final data =file.getImages[index];
              return FutureBuilder<String>(
                future: getThumbnail(data.path),
                builder: (context, snapshot) {
                  return snapshot.hasData? GestureDetector(
                    onTap: (){
                      Navigator.push(context, CupertinoPageRoute(builder: (_)=> ImageView(
                          imagePath:data.path
                      )),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: FileImage(File(snapshot.data!))),
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                  ):const Center(
child: CircularProgressIndicator(),
                  );
                }
              );
            }),
          ),
        );
      }),
    );
  }
}