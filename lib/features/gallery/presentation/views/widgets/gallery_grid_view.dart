import 'package:flutter/widgets.dart';
import 'package:gallery_app/core/utils/app_router.dart';
import 'package:gallery_app/features/gallery/data/models/gallery_image_model.dart';
import 'package:gallery_app/features/gallery/presentation/views/widgets/grid_item.dart';
import 'package:go_router/go_router.dart';

class GalleryGridView extends StatelessWidget {
  const GalleryGridView({super.key, required this.images});
  final List<GalleryImageModel> images;
  @override
  Widget build(BuildContext context) {
    return images.isEmpty ? const Center(child: Text("No Images")) : GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => GridItem(
        galleryImageModel: images[index],
        ontap: () {
          GoRouter.of(context).push(AppRouter.image, extra: images[index]);
        },
      ),
    );
  }
}
