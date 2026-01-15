import 'package:flutter/material.dart';
import 'package:gallery_app/features/gallery/data/models/gallery_image_model.dart';
import 'package:gallery_app/features/gallery/presentation/views/widgets/image_view_body.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.galleryImageModel});
  final GalleryImageModel galleryImageModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ImageViewBody(galleryImageModel: galleryImageModel),
      ),
    );
  }
}
