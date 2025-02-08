class Rectangle {
  int _width = 0;
  int _height = 0;

  int get width {
    return _width;
  }

  set width(int value) {
    if (value >= 1) {
      _width = value;
    }
  }

  int get height {
    return _width;
  }

  set height(int value) {
    _height = value;
  }

  //Expression Body
  // int get width => _width;
  // set width(int value) => _width = value;

  // int get height => _height;
  // set height(int value) => _height = value;
}
