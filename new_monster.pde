void new_monster(){
  key_input = "";
  start_shoot = false;

  if (type_str == "direct"){
    Nmonster = (Nmonster+1) % 6;
    Monster[0] = loadImage("./M" + str(Nmonster)+ ".png");
    posMonster[0][0] = floor(random(width-26));
    posMonster[0][1] = floor(random( yshift - height +30,  yshift -30));
    posBall[0] = 0;
    posBall[1] = 0;
    if (random_shift){
        yshift = random(height/3,height);
      }
      // println(posMonster[1]);
  }
  else if (type_str == "indirect"){
    yshift = height;
    gross_number = floor(random( yshift - height + yshift/2,  yshift -26));
    posBall[0] = 1;
    posBall[1] = gross_number;
    for(int i = 0 ; i<3 ; i++ ){
      Nmonster = (Nmonster+1) % 6;
      // calculate the positions of the new monsters
      posMonster[i][0] = floor(random(pow(i+1,2)+1,pow(i+2,2)));
      posMonster[i][1] = gross_number/posMonster[i][0];
      Monster[i] = loadImage("./M" + str(Nmonster)+ ".png");
    }
  }
}
