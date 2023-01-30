class  FThwomp extends FGameObject{
  
  
  FThwomp(float x, float y){
    super();
    setPosition(x, y);
    setName("thwomp");
    setStatic(true);
    setRotatable(false);
    attachImage(thwomp0);
  
}

void act(){

  if (isTouching("player")) {
     if(getY()<player.getY()-gridSize/2)
      player.lives--;
      }
      
      if(player.getX()>=getX()){
        attachImage(thwomp1);
      setStatic(false);
      }
}

  


}
