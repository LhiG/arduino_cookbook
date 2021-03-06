import processing.serial.*;

Serial myPort;  
String val; 

void setup()
{
  // I know that the first port in the serial list on my mac
  // is Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
   
  for (int i = 0; i < Serial.list().length; i++) {
    print(i + " ");
    println(Serial.list()[i]);
  }
  
  String portName = Serial.list()[2]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if (mousePressed == true) {
     myPort.write('1');         //send a 1
     println("1");   
  } else {
     myPort.write('0');          //send a 0
  }  
}