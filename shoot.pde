void shoot(){
 // shoot the ball in the direction inserted by the user 
 // println("shooooot");
 if (type_str=="direct"){
   posBall[0] += 0.02*posMonster[0][0]; // int(random(width));
   posBall[1] = posBall[0] * float(key_input); 
 }
 else if(type_str=="indirect"){
   posBall[0] += 10 / x_scale; // int(random(width));
   posBall[1] = float(key_input) / posBall[0] ; 
 }
 if (x_scale*posBall[0] > width || posBall[1] > yshift || posBall[1] < -height + yshift ){
   posBall[0] = 0;
   posBall[1] = 0;
   if (type_str =="indirect"){
     posBall[0] = 1;
     posBall[1] = gross_number;
   }
   start_shoot = false;
   show_result(0);
 }
}
