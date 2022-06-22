class Hintergrund {

  private int boarder;

  public Hintergrund(int boarder) {
    this.boarder = boarder;
  }

  void machHintergrund() {
    background(36, 203, 172);
    fill(50, 50, 50);
    rect(boarder, 0, width-boarder*2, height);
    fill(255, 255, 255);
  }
}
