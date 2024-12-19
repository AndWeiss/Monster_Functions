void keyPressed(){
    if (key == ' '){
      new_monster();
    }
    else if (key == ENTER){
      start_shoot = !start_shoot;
      
    }
    else if (key == BACKSPACE){
      if (key_input.length()>0){
        key_input = key_input.substring(0,key_input.length() - 1);
      }
    }
    else if (key == 'r'){
      random_shift = !random_shift;
    }
    else if(key =='t'){
      type_i = (type_i+1) % types.length;// 3;
      //println(type_i);
      type_str = types[type_i];
      if (type_str == "indirect"){
        x_scale = 100;
        dist_limit = 0.1;
        new_monster();
      }
      else if (type_str == "direct"){
        x_scale = 1;
        dist_limit = 10;
        new_monster();
      }
      else if (type_str == "polynomial"){
        x_scale = 1;
        dist_limit = 10;
        new_monster();
      }
    }
    else if (key == 'f'){
      show_equation = !show_equation;
    }
    else {
      key_input = key_input + key;
    
    }
    // println(key);
}
