float r;

float theta;
float theta_vel;
//float theta_acc;

float diameter;
float angle = 0;

void setup (){
  //background(25);
  size (1920,1080);
  diameter = height - 760; 
  r = height * 0.2;
  theta = 0;
  theta_vel = .001;
  //theta_acc = 0.0000001;
  
   
  
 }
  
void draw (){
   background(0);
  
  
  pushMatrix(); //Sun
  fill(249,215,28);
  noStroke();
  translate (width/2, height/2);
 
 float d1 = 30 + (sin(angle)* diameter/20) + diameter/2;
  
    ellipse(0,0, d1,d1);
  angle +=0.02;
  
  popMatrix();
  
    pushMatrix(); //Stars
  fill(255);
  noStroke();
  translate (width/2, height/2);
 
 float d2 = 0 + (sin(angle)* diameter)/100;
 float d3 = 0 + (sin(angle + PI/2) * diameter)/120;
 float d4 = 0 + (sin(angle + PI) * diameter)/200;
  
    ellipse(240,520, d2,d2);
    ellipse(-880,-420, d2,d2);
    ellipse(-680,-20, d2,d2);
    ellipse(580,-300, d2,d2);
    ellipse(780, 300, d2,d2);
    ellipse(-200, -200, d2,d2);
    ellipse(-200, -200, d2,d2);
    ellipse(300, -500, d3,d3);
    ellipse(-450, 300, d3,d3);
    ellipse(550, -250, d3,d3);
    ellipse(-350, -350,d3,d3);
   ellipse(-360, -380,d3,d3);
   ellipse(-300, 450,d4,d4);
   ellipse(130, 100,d4,d4);
   ellipse(680,-80,d3,d3);
   ellipse(-940,420,d4,d4);
   ellipse(390,460,d3,d3);
  angle +=0.00000010;
  
  popMatrix();
  
  pushMatrix(); //Planet 1
 translate (width/2, height/2);
 
 float x4 = (r) * cos(theta-100);
 float y4 = (r) * sin(theta-150);
 

  ellipseMode(CENTER);
  fill(153, 50, 204);
  ellipse(x4+20,y4, 10,10);
  
  //theta_vel += theta_acc;
  theta += theta_vel/2;
     popMatrix();
  
  pushMatrix(); //P
 translate (width/2, height/2);
 
 float x = (r+50) * cos(theta+10);
 float y = (r+100) * sin(theta+10);
 
  ellipseMode(CENTER);
  fill(85, 204, 25);
   ellipse(x,y, 20,20);
  
   //theta_vel += theta_acc;
  theta += theta_vel;
   popMatrix();
   
   
   pushMatrix(); //P1
 translate (width/2, height/2);
 
 float x1 = (r+100) * cos(theta);
 float y1 = (r+200) * sin(theta);
 

  ellipseMode(CENTER);
  fill(30, 144, 255);
  ellipse(x1+10,y1, 40,40);
  
  //theta_vel += theta_acc;
  theta += theta_vel;
     popMatrix();
   
 pushMatrix(); //P2
 translate (width/2, height/2);
 
 float x2 = (r+200) * cos(theta+15);
 float y2 = (r+400) * sin(theta+15);
 

  ellipseMode(CENTER);
  fill(220, 20, 60);
  ellipse(x2+10,y2+20, 60,60);
  
  //theta_vel += theta_acc;
  theta += theta_vel*2;
     popMatrix();
   
 pushMatrix(); //P3
 translate (width/2, height/2);
 
 float x3 = (r+600) * cos(theta-55);
 float y3 = (r+600) * sin(theta-55);
 

  ellipseMode(CENTER);
  fill(119, 136, 153);
  ellipse(x3+10,y3+20, 80,80);
  
  //theta_vel += theta_acc;
  theta += theta_vel/2;
     popMatrix();

pushMatrix(); //P5
 translate (width/2, height/2);
 
 float x5 = (r+530) * cos(theta+180);
 float y5 = (r+500) * sin(theta+180);
 

  ellipseMode(CENTER);
  fill(255, 140, 0);
  ellipse(x5+90,y5-20, 100,100);
  
  //theta_vel += theta_acc;
  theta += theta_vel*2;
     popMatrix();
     
     
  pushMatrix(); //Planet 6
 translate (width/2, height/2);
 
 float x6 = (r+430) * cos(theta+110);
 float y6 = (r+500) * sin(theta+110);
 

  ellipseMode(CENTER);
  fill(64,224,208);
  ellipse(x6+90,y6-20, 70,70);
  
  //theta_vel += theta_acc;
  theta += theta_vel*2;
     popMatrix();
     
     pushMatrix(); //P
 translate (width/2, height/2);
 
 float x7 = (r+800) * cos(theta+120);
 float y7 = (r+400) * sin(theta+120);
 
  ellipseMode(CENTER);
  fill(255,20,147);
   ellipse(x7,y7, 20,20);
  
   //theta_vel += theta_acc;
  theta += theta_vel;
   popMatrix();
}
