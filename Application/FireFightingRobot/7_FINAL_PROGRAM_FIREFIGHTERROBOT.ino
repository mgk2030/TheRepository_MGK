//Final Program Fire Fighting Robot

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
pinMode(10,OUTPUT);
pinMode(11,OUTPUT);
pinMode(12,OUTPUT);
pinMode(13,OUTPUT);
pinMode(9,OUTPUT);
pinMode(A0,INPUT);
pinMode(A1,INPUT);
pinMode(A2,INPUT);

}
void moveRobot(String motion) {
  if(motion == "Forward"){
    digitalWrite(10,HIGH);
    digitalWrite(11,LOW);
    digitalWrite(12,HIGH);
    digitalWrite(13,LOW);
    Serial.println("Forward");
  }
  if(motion == "Backward"){
    digitalWrite(10,LOW);
    digitalWrite(11,HIGH);
    digitalWrite(12,LOW);
    digitalWrite(13,HIGH);
    Serial.println("Backward");
  }
  if(motion == "Left"){
    digitalWrite(10,HIGH);
    digitalWrite(11,LOW);
    digitalWrite(12,LOW);
    digitalWrite(13,HIGH);
    Serial.println("Left");
  }
  if(motion == "Right") {
  digitalWrite(10,LOW);
  digitalWrite(11,HIGH);
  digitalWrite(12,HIGH);
  digitalWrite(13,LOW);
  Serial.println("Right");
 }
 if(motion == "Stop") {
  digitalWrite(10,LOW);
  digitalWrite(11,LOW);
  digitalWrite(12,LOW);
  digitalWrite(13,LOW);
  Serial.println("Stop");
 }
}

void loop() {
  // put your main code here, to run repeatedly:

int Right = analogRead(A0);
int Middle = analogRead(A1);
int Left = analogRead(A2);

Serial.print(Right);
Serial.print("\t");
Serial.print(Middle);
Serial.print("\t");
Serial.print(Left);
delay(1000);

if((Left < 100) && (Middle < 100) && (Right < 100)){
  moveRobot("Stop");
}
else {
  if((Left > Middle) && (Left > Right)){
    moveRobot("Left");
    delay(500);
    moveRobot("Stop");
    delay(100);
  }
  if((Right > Middle) && (Right > Left)){
    moveRobot("Right");
    delay(500);
    moveRobot("Stop");
    delay(100);
  }
   if((Middle > Right) && (Middle > Left) && (Middle < 600)){
    moveRobot("Forward");
    delay(500);
    moveRobot("Stop");
    delay(100);
  }
  if((Middle > Right) && (Middle > Left) && (Middle > 600)){
    moveRobot("Stop");
    digitalWrite(9,HIGH);
    delay(5000);
    digitalWrite(9,LOW);
  }
  
  
   
  
  
}
}
