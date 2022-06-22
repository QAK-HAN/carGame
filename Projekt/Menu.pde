class Menu{
  private boolean inMenu = true; 
 
  boolean isInMenu(){
    return inMenu;
  }
  
  void setMenu(){
    this.inMenu = false;
  }

  void menuDesign(){
    background(36, 203, 172);
    if (keyCode == ALT){
    this.inMenu = false;
    }
  }
}
