import processing.sound.*; // Used to play with sound
import processing.serial.*; // Used for communication with Ardunio


SoundFile[] file = new SoundFile[13];
Serial port;

void setup(){
  size(640,350);
  background(255);

  for(int i=0;i<13;i++){
    String s = i + 1 + ".mp3";
    println(s);
    file[i] = new SoundFile(this,s);
  }
  
  port =  new Serial(this,Serial.list()[1], 9600);

}

void draw() {
  if(0 < port.available()){
    String str = port.readString();
    println(str);
    int s = int(float(str)) + 1;
    print("This is what I am getting as int");
    println(s);
    if(s == 1 && !file[0].isPlaying()){
      file[0].play();
      background(255,125,89);
    }
    else if(s == 2 && !file[1].isPlaying()){
      file[1].play();
      background(78,225,89);
    }
    else if(s == 3 && !file[2].isPlaying()){
      file[2].play();
      background(123,25,200); 
    }
    else if(s == 4 && !file[3].isPlaying()){
      file[3].play();
      background(123,25,200); 
    }
 }
}
