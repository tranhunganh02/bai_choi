
class Video{
  late int _id;
  late String _videoURL;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get videoURL => _videoURL;

  set videoURL(String value) {
    _videoURL = value;
  }

  Video(this._id, this._videoURL);
}

// Dữ liệu Pho sách
final Video nhatNoc = Video(1 , 'assets/video/ho1.mp4');
final Video nhiNgheo = Video(2, 'assets/video/ho2.mp4');
final Video baGa = Video(3 , 'assets/video/ho3.mp4');

List<Video> listVideo = [nhatNoc, nhiNgheo, baGa];


