class Timer {

  float time;

  Timer(float set) // Construktor new timer wird erstellt
  {
    time = set;
  }

  float getTime() {
    return(time); // returnt die zeit
  }

  void setTime(float set) { // setzt die zu einen x value
    time = set;
  }

  void countUp() { // Timer update muss in void draw rein
    time += 1 /frameRate;
  }

  void countDown() { // Timer update muss in void draw rein
    time -= 1 /frameRate;
  }
}
