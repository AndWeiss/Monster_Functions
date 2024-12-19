void new_monster(){
  key_input = "";
  start_shoot = false;

  if (type_str == "direct"){
    function_str = "y = p*x";
    monster_iter = (monster_iter+1) % 6;
    if (random_shift){
        yshift = random(height/4,height);
    }
    Monster[0] = loadImage("./M" + str(monster_iter)+ ".png");
    posMonster[0][0] = floor(random(width-26));
    posMonster[0][1] = floor(random( yshift - height + 50,  yshift - 50));
    posBall[0] = 0;
    posBall[1] = 0;

      // println(posMonster[1]);
  }
  else if (type_str == "indirect"){
    yshift = height;
    function_str = "y = g/x";
    gross_number = floor(random( yshift - height + yshift/2,  yshift -26));
    posBall[0] = 1;
    posBall[1] = gross_number;
    for(int i = 0 ; i<3 ; i++ ){
      monster_iter = (monster_iter+1) % 6;
      // calculate the positions of the new monsters
      posMonster[i][0] = floor(random(pow(i+1,2)+1,pow(i+2,2)));
      posMonster[i][1] = gross_number/posMonster[i][0];
      Monster[i] = loadImage("./M" + str(monster_iter)+ ".png");
    }
  }
  else if (type_str == "polynomial"){
    String para_str = "abcdefghijklmnopqrstuvwxyz";
    function_str = "y = ";
    Nmonsters = degree;
    if (random_shift){
        yshift = random(height/4,height);
    }
    for(int i =0;i<Nmonsters;i++){
      function_str = function_str + para_str.substring(i,i+1) + "*x^" + str(degree-i) + " + ";
    }
    function_str = function_str + para_str.substring(degree,degree+1) ;
    // delete the last two characters from the string which is "+ "
    //function_str = function_str.substring(0,function_str.length()-2);
    posMonster[0][0] = floor(random(width-26));
    posMonster[0][1] = floor(random( yshift - height + 50,  yshift - 50));
  
  }
}
