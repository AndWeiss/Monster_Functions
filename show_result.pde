void show_result(int i_monster){
  int txtSize = 60;
 
  textSize(txtSize);
  fill(255, 0, 1);
  if (hit){
    image(Explosion,x_scale*posMonster[i_monster][0]-100,posMonster[i_monster][1]-100,200,200);
    pushMatrix();
    scale(1,-1);
    translate(0,-yshift);
    text("Treffer!", width/2, height/2); 
  }
  else { 
    pushMatrix();
    scale(1,-1);
    translate(0,-yshift);
    text("Daneben!", width/2, height/2+70); 
  }
  hit = false;
  popMatrix();
}
