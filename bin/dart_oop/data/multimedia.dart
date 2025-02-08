abstract class Multimedia {}

mixin Playable on Multimedia {
  String? name;

  void play() {
    print("Play $name");
  }
}

mixin Stoppable {
  String? name;

  void stop() {
    print("Stop $name");
  }
}

class Audio extends Multimedia with Playable, Stoppable {}

class Video with Stoppable {}
