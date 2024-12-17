
// def mouseReleased():
PImage[] Monster = new PImage[3];
PImage Explosion;
float[][] posMonster = {{10,10},{10,10},{10,10}};
float[] posBall    = {0,0};
float yshift =0;
float gross_number = 1;
float x_scale = 1;
float dist_limit = 10;

int ballSize     = 10;
int Nmonster = 0;
int score    = 0;

String key_input = "";
String type_str  = "direct"; // or indirect

boolean start_shoot = false;
boolean hit = false;
boolean random_shift = false;


void setup(){
    fullScreen();
    // size(1500,700)
    background(255);
    noStroke();
    fill(255);
    ellipseMode(CENTER);
    ellipseMode(RADIUS);
    new_monster();
    Explosion = loadImage("Explosion.png");
    yshift = height;
}


void draw(){
    fill(255,10);
    noStroke();
    rect(0,0,width,height);
    translate(0,yshift);
    scale(1,-1);
    //fill(255,10);
    //noStroke();
    
    //rect(0, 0, width, yshift);
    //rect(0, 0, width, -yshift);  
    
    stroke(0);
    strokeWeight(2);
    line(0,0,width,0);
    
    fill(20);
    ellipse(x_scale*posBall[0],posBall[1],ballSize,ballSize);
    show_monster();
    show_text();
    if (start_shoot){ 
      shoot();
      check_collision();
    }
    
    //ellipse(randx[i],randy[i],1,1);
}
        
