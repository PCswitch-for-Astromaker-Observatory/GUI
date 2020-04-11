import g4p_controls.*;
import processing.serial.*;


int currentMinute=minute();
int[] pinState= new int[9];
int[] feedback=new int[9];
String[] label={"Mount","CCD","Focuser","Heaters","FlatBox","OUT6","OUT7","OUT8"};

String toSend;

Serial arduino;

void setup(){
  size(640,120);
  background(100,30,40);
  printArray(Serial.list());
  String portName = Serial.list()[0];
  arduino = new Serial(this, portName, 9600);
  
  for(int i=0; i<8;i++)
  feedback[i]=0;
  
  fill(255);
  
  textSize(20);
  text("Observatory Remote Switch Panel",150,25);
  textSize(12);
  for(int i=0;i<8;i++)
    text(label[i],10+i*80,45);
    
  delay(3000);
  strokeWeight(2);
  
  createGUI();
}



void draw(){
  if(arduino.available()>0){
    String feedbackString=arduino.readString();
    feedback= int(split(feedbackString,'#'));
    
    arduino.clear();
    
    for(int i=0;i<8;i++){      
      if(feedback[i]==1)
        fill(200,0,0);
      else
        fill(0,200,0);
    
      rect(10+80*i,50,60,30,15);
    
      if(feedback[i]==1){
        fill(200,100,100);
        ellipse(25+80*i,65,23,23);
      }
      
      else{
        fill(100,200,100);
        ellipse(55+80*i,65,23,23);
      }
    }    
  }
  
  if(minute() != currentMinute){
    currentMinute=minute();
    
    int countdown = int( countdown1.getText() );
    if(countdown !=0 ){
      if(countdown == 1 ){
        pinState[0]=0;
      }
      countdown1.setText(str(countdown-1));
    }
    
    countdown = int( countdown2.getText() );
    if(countdown !=0 ){
      if(countdown == 1 ){
        pinState[1]=0;
      }
      countdown2.setText(str(countdown-1));
    }
    
    countdown = int( countdown3.getText() );
    if(countdown !=0 ){
      if(countdown == 1 ){
        pinState[2]=0;
      }
      countdown3.setText(str(countdown-1));
    }
    
    countdown = int( countdown4.getText() );
    if(countdown !=0 ){
      if(countdown == 1 ){
        pinState[3]=0;
      }
      countdown4.setText(str(countdown-1));
    }
    
    countdown = int( countdown5.getText() );
    if(countdown !=0 ){
      if(countdown == 1 ){
        pinState[4]=0;
      }
      countdown5.setText(str(countdown-1));
    }
    
    countdown = int( countdown6.getText() );
    if(countdown !=0 ){
      if(countdown == 1 ){
        pinState[5]=0;
      }
      countdown6.setText(str(countdown-1));
    }
    
    countdown = int( countdown7.getText() );
    if(countdown !=0 ){
      if(countdown == 1 ){
        pinState[6]=0;
      }
      countdown7.setText(str(countdown-1));
    }
    
    countdown = int( countdown8.getText() );
    if(countdown !=0 ){
      if(countdown == 1 ){
        pinState[7]=0;
      }
      countdown8.setText(str(countdown-1));
    }
    
    for(int i=0;i<8;i++){
      toSend=toSend+str(pinState[i])+"#";
    }
  
    arduino.write(toSend);
    toSend="";
  }
}

void mouseClicked(){
if(mouseY>50 && mouseY<80){
  if(mouseX>10 && mouseX<70)
    if(pinState[0]==0)
      pinState[0]=1;
    else
      pinState[0]=0;
      
  if(mouseX>90 && mouseX<150)
    if(pinState[1]==0)
      pinState[1]=1;
    else
      pinState[1]=0;
      
  if(mouseX>170 && mouseX<230)
    if(pinState[2]==0)
      pinState[2]=1;
    else
      pinState[2]=0;
      
  if(mouseX> 250 && mouseX<310)
    if(pinState[3]==0)
      pinState[3]=1;
    else
      pinState[3]=0;
      
  if(mouseX>330 && mouseX<390)
    if(pinState[4]==0)
      pinState[4]=1;
    else
      pinState[4]=0;
      
  if(mouseX>410 && mouseX<470)
    if(pinState[5]==0)
      pinState[5]=1;
    else
      pinState[5]=0;
      
  if(mouseX>490 && mouseX<550)
    if(pinState[6]==0)
      pinState[6]=1;
    else
      pinState[6]=0;
      
  if(mouseX>570 && mouseX<630)
    if(pinState[7]==0)
      pinState[7]=1;
    else
      pinState[7]=0;

      
      
  for(int i=0;i<8;i++){
    toSend=toSend+str(pinState[i])+"#";
  }
  
  arduino.write(toSend);
  toSend="";
}
}
