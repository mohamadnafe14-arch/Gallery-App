import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gallery_app/features/gallery/data/models/gallery_image_model.dart';

part 'gallery_state.dart';

class GalleryCubit extends Cubit<GalleryState> {
  GalleryCubit() : super(GalleryInitial());
}
