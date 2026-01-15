import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gallery_app/core/errors/failure.dart';
import 'package:gallery_app/features/gallery/data/models/gallery_image_model.dart';
import 'package:gallery_app/features/gallery/data/repo/gallery_repo.dart';

part 'gallery_state.dart';

class GalleryCubit extends Cubit<GalleryState> {
  GalleryCubit(this.galleryRepo) : super(GalleryInitial());
  final GalleryRepo galleryRepo;

  Future<void> getGalleryImages() async {
    emit(GalleryLoading());
    final result = await galleryRepo.getGalleryImages();
    result.fold((l) {
      if (l is PermissionFailure) {
        emit(GalleryPermissionDenied());
      }
      emit(GalleryError(l.message));
    }, (r) => emit(GalleryLoaded(r)));
  }
}
