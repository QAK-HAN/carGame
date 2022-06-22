import java.util.*;

class Hindernisse {

  float r = 1;
  int counter = 0;
  float xpos;
  float ypos;
  private float durchmesser;
  private float [] gPos = new float[4];

  Random random = new Random ();
  int f = random.nextInt(0, 4);
  int g = random.nextInt(0, 4);
  int h = random.nextInt(0, 4);


  int i = 0;



  public Hindernisse(float xpos, float ypos, float durchmesser) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.durchmesser = durchmesser;

    gPos[0] = 300;
    gPos[1] = 550;
    gPos[2] = xpos/1.8;
    gPos[3] = 1050;
  }

  void zeichneGegner() {

    fill(255, 0, 0);
    rect(gPos[f], ypos, durchmesser, durchmesser);
    fill(0, 0, 200);
    rect(gPos[f]+durchmesser/4, ypos+durchmesser/2, durchmesser/2, durchmesser/2);
    fill(0, 255, 0);
    rect(gPos[g], ypos, durchmesser, durchmesser);
    fill(0, 0, 200);
    rect(gPos[g]+durchmesser/4, ypos+durchmesser/2, durchmesser/2, durchmesser/2);
    fill(125, 0, 255);
    rect(gPos[h], ypos, durchmesser, durchmesser);
    fill(0, 0, 200);
    rect(gPos[h]+durchmesser/4, ypos+durchmesser/2, durchmesser/2, durchmesser/2);
    
    ypos= ypos + 20 + 1 * r;


    if (ypos >= height) {
      ypos = ypos-height-durchmesser;
      f = random.nextInt(0, 4);
      g = random.nextInt(0, 4);
      h = random.nextInt(0, 4);
      counter = counter +1;
      r = r + 1 * 0.001;
    }
  }
}
