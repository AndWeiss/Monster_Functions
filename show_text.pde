void show_text(){
  int txtSize = 60;
  pushMatrix();
  scale(1,-1);
  translate(0,-yshift);
  textSize(txtSize);
  text("Position Monster:", 1, txtSize); 
  text("x = " + str(posMonster[0][0]) + "| y = " + str(posMonster[0][1]) , 1, 2*txtSize);
  if(type_str == "direct"){
    text("Proportionalitaetsfaktor",1,3*txtSize);
  }
  else if (type_str == "indirect"){
    text("Gesamtgroesse",1,3*txtSize);
  }
  text(key_input,1,4*txtSize);
  text("Punkte",width-200,txtSize);
  text(str(score),width-200,2*txtSize);
  popMatrix();
}
