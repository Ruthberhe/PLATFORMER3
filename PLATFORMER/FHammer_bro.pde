class FHammerbro extends FGameObject {

  //int direction =L;
  int direction =R;
  int speed =50;
  int frame=0;

  FHammerbro(float x, float y) {
    super();
    setPosition(x, y);
    setName("hammerbro");
    setRotatable(false);
  }

  void act() {
    animate();
    collide();
    move();
    hammer();
  }


  void collide() {
    if (isTouching("wall")) {
      direction *=-1;
      setPosition(getX()+direction, getY());
    }

    if (isTouching("player")) {
      if (player.getY()<getY()-gridSize/2) {
        player.setVelocity(player.getVelocityX(), -300);
        coin1.rewind();
        coin1.play();
        player.score++;
        world.remove(this);
        enemies.remove(this);
      } else {
        player.lives--;
        player.setPosition(-100, 100);
      }
    }
  }

  void animate() {
    if (frame >= action.length) frame=0;
    if (frameCount % 5==0) {
      if (direction==R)  attachImage(hammerBro[frame]);
      // if (direction==L)  attachImage(reverseImage(hammerBro[frame]));
      frame++;
    }
  }

  void move() {
    float vy= getVelocityY();
    setVelocity(speed*direction, vy);
  }


  void hammer() {
    //FBox hmr = new FBox(50, 50);
    //hmr.setPosition(150, 100);
    //hmr.attachImage(hammer);
    //hmr.setVelocity(100, 100);
    //hmr.setAngularVelocity(100);
    //hmr.setSensor(true);
    //world.add(hmr);
  }
}
