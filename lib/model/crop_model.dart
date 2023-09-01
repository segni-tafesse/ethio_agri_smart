class CropModel {
  String? crop_title;
  String? mdPath;
  String? crop_poster_url;

  CropModel(this.crop_title, this.crop_poster_url, this.mdPath);
  CropModel.withoutMd(this.crop_title, this.crop_poster_url);
}
