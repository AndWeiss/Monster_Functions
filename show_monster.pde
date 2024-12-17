void show_monster()
{
  image(Monster[0],x_scale*posMonster[0][0]-25,posMonster[0][1]-25,50,50);
  if (type_str == "indirect"){
    image(Monster[1],x_scale*posMonster[1][0]-25,posMonster[1][1]-25,50,50);
    image(Monster[2],x_scale*posMonster[2][0]-25,posMonster[2][1]-25,50,50);
  }
}
