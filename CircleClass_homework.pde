Circle circle, rectangle;
float randomNum = random(0,1);
int i = 1;
void setup() {
  size(300, 300);

  circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3), random(1,100));
  rectangle = new Circle(random(width), random(height), random(1,50),random(1,50), random(-3, 3), random(-3, 3));
}
void draw() {
  background(200);

  i = i+1;
  
if(randomNum <=0.5){
 // circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3), random(1,100));
  circle.move();
  circle.display();
}
if(randomNum >= 0.5){
 // rectangle = new Circle(random(width), random(height), 20,20, random(-3, 3), random(-3, 3));
  rectangle.move();
  rectangle.display();
}


if(i>50 && i<100){
  circle=rectangle;
} if (i>=100 && i<200){
  rectangle = circle;
} if (i>=200){
 i=0;
}

    println(i);
  
  
 }
 
