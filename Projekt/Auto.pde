
class Auto {



  private float track;
  private float ypos;
  private int durchmesser;
  private int schritte;



  public Auto(float track, float ypos, int durchmesser, int schritte) {
    this.track = track;
    this.ypos = ypos;
    this.durchmesser = durchmesser;
    this.schritte = schritte;
  }

  void zeichneAuto() {
    rect(track, ypos, durchmesser, durchmesser*1.3);
    fill(0, 0, 200);
    rect(track+durchmesser/4, ypos, durchmesser/2, durchmesser/3);
  }

  public float getTrack() {
    return track;
  }

  public void setTrack(float track) {
    this.track = track;
  }


  public int getSchritte() {
    return schritte;
  }
}
