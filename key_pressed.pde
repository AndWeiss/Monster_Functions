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
      if (type_str == "direct"){
        type_str = "indirect";
        x_scale = 100;
        dist_limit = 0.1;
        new_monster();
      }
      else if (type_str == "indirect"){
        type_str = "direct";
        x_scale = 1;
        dist_limit = 10;
        new_monster();
      }
      
    }
    else {
      key_input = key_input + key;
    
    }
    // println(key);
}
