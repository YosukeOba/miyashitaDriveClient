import processing.net.*;

String serverAddress = "192.168.1.206";
Client client;

void setup(){
  client = new Client(this, serverAddress, 50000);
}

void draw(){
  
}

void mousePressed(){
  client.write("test"+'\n');
}

void clientEvent(Client client){
  String receiveData = client.readStringUntil('\n');
  if(receiveData != null){
    println(receiveData.trim());
  }
}
