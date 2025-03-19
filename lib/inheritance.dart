void main() {
  print("---------------------------------------");
  print("***** Sports Categories Inheritance *****");
  print("---------------------------------------");
  
  Cricket cricket = Cricket("Cricket", "Stadium", 11);
  cricket.play();
  cricket.teamSize();
  cricket.location();
  print("---------------------------------------");
  
  Tennis tennis = Tennis("Tennis", "Court");
  tennis.play();
  tennis.location();
  print("---------------------------------------");
  
  Chess chess = Chess("Chess", "Chess Hall");
  chess.play();
  chess.location();
  print("---------------------------------------");
}

class Sport {
  String name;
  String venue;
  
  Sport(this.name, this.venue);
  
  void play() {
    print("Playing $name");
  }
  
  void location() {
    print("$name is played in a $venue.");
  }
}

class OutdoorSport extends Sport {
  OutdoorSport(super.name, super.venue);
}

class IndoorSport extends Sport {
  IndoorSport(super.name, super.venue);
}

mixin TeamSport {
  int players = 0;
  
  void teamSize() {
    print("This sport requires $players players per team.");
  }
}

class Cricket extends OutdoorSport with TeamSport {
  Cricket(super.name, super.venue, int players){
    this.players = players;
  }
}

class Tennis extends OutdoorSport {
  Tennis(super.name, super.venue);
}

class Chess extends IndoorSport {
  Chess(super.name, super.venue);
}
