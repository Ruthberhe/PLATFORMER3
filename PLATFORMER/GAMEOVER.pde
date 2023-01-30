void gameOver(){
   background(black);
 // textSize(tsize);
 gameover.play();
  textSize(tsize);
  text("GAMEOVER", width/2, height/2);
  if (tsize>200) {
    tsize=5;
  }
  tsize++;
  
  restart.show();
  if(restart.clicked){
    reset();
    mode=INTRO;
  }
}
