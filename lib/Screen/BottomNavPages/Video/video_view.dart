import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_native_api/flutter_native_api.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
class ImageView extends StatefulWidget {

  final String ? imagePath;

  const ImageView({super.key, this.imagePath });
  @override
  State<ImageView> createState() => _ImageViewState();
}
class _ImageViewState extends State<ImageView> {
  ///list of button
  List<Widget>buttonsList= const [
    Icon(Icons.download),
    Icon(Icons.print),
    Icon(Icons.share),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration:   BoxDecoration(

            color: Colors.grey, image: DecorationImage(
              fit: BoxFit.cover,
              image: FileImage(File(widget.imagePath!))),
          ),
        ),
        floatingActionButton: Padding(
          padding:  const EdgeInsets.only(left: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(buttonsList.length, (index) {
              return FloatingActionButton(onPressed: ()async{
                switch(index){
                  case 0:
                    log("download image");
                    await ImageGallerySaver.saveFile(widget.imagePath!).then((value) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("ImageSaved in your gallery")));
                    });
                    break ;
                  case 1:
                    log("print");
                    FlutterNativeApi.printImage(widget.imagePath!, widget.imagePath!.split("/").last);
                    break;
                  case 2:
                    log("share");
                    FlutterNativeApi.shareImage(widget.imagePath!);

                    break;

                }

              },child:buttonsList[index],

              );

            }),
          ),
        ));

  }
}