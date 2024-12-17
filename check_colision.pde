float[] distance(){
  float dist[] = {1000,1000,1000};
  dist[0] =sqrt( pow(posBall[0] - posMonster[0][0],2) + pow(posBall[1] - posMonster[0][1],2) );
  if(type_str == "indirect"){
    dist[1] = sqrt( pow(posBall[0] - posMonster[1][0],2) + pow(posBall[1] - posMonster[1][1],2) );
    dist[2] = sqrt( pow(posBall[0] - posMonster[2][0],2) + pow(posBall[1] - posMonster[2][1],2) );
  }
  return dist;
}

void check_collision(){
  float dis[] = distance();
  for (int i=0;i<3;i++){
    if(dis[i] < dist_limit ){
      hit = true;
      show_result(i);
      //start_shoot = false;
      //posBall[0] = 0;
      //posBall[1] = 0;
      score +=1;
    }
  }
}
