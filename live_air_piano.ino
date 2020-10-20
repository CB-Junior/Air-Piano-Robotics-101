void setup() {
  Serial.begin(9600);
  pinMode(8,INPUT);
  pinMode(9,INPUT);
  pinMode(10,INPUT);
  pinMode(11,INPUT);
}
long a; // Long is exactly same as int only difference between long and 
// int is the range which they can store value 
// random function returns long so we are using long to store it

boolean flag1 = false;

void loop() {
  if(digitalRead(8) == 0){
      a = 0;
      Serial.println(a);
    }  
  if(digitalRead(9) == 0){
      a = 1;
      Serial.println(a);
    }  
  if(digitalRead(10) == 0){
      a = 2;
      Serial.println(a);
    }  
  if(digitalRead(11) == 0){
    a = 3;
      Serial.println(a);
    }  
    delay(50);
}
