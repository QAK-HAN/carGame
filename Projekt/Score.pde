import java.lang.*;
int x1 = 1260;
int y1 = 30;
int y2 = 60;
class Score {

  void scoreCounter() {
    fill(255, 255, 255);
    rect(1255, 10, 170, 60);
    noStroke();
    fill (0, 0, 0);
    t.countUp();
    int time = round(t.getTime());
    long counter = g.counter + 10 * time;
    textAlign(TOP, RIGHT);
    textSize(20);
    text ("Your Time: " + time + " s.", x1, y1);
    text ("Your Points: " + counter, x1, y2);
  }
}
