Auto a;
HintergrundObjekte h;
Hindernisse g;
Hintergrund k;
Timer t;
Death d;
Score s;



int i = 3;

void setup() {
  frameRate (60);
  size(1440, 900);
  fill(102);
  start();
}

void start() {
  k = new Hintergrund (200);
  h = new HintergrundObjekte (width, 0, -250, -500, -750, 15, 100, 15);
  a = new Auto(width/1.8, height-180, 115, 250);
  g = new Hindernisse(width, -115, 115);
  t = new Timer (0);
  d = new Death();
  s = new Score();
}



void draw() {
  if (d.isDead() == false) {
    k.machHintergrund();
    h.zeichneSeitenStreifen();
    h.zeichneStreifen();
    h.clouds();
    a.zeichneAuto();
    s.scoreCounter();

    if (t.getTime() >= 3) {
      g.zeichneGegner();
    }
    d.screen();
  } else if (d.isDead() == true) {
    d.stayDead();
    i = 3;

}
}




void keyPressed() {


  if (keyCode == LEFT) {
    if (i <= 1) {
      a.setTrack(a.getTrack());
    } else {
      a.setTrack(a.getTrack() - a.getSchritte());
      i = i - 1;
    }
  }


  if (keyCode == RIGHT) {
    if (i >= 4) {
      a.setTrack(a.getTrack());
    } else {
      a.setTrack(a.getTrack() + a.getSchritte());
      i = i + 1;
    }
  }
  
  
  
  
}
