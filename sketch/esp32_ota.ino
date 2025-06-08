#include <WiFi.h>
#include <ESPAsyncWebServer.h>
#include <Update.h>

const char* ssid = "WIFI-ALEX";
const char* password = "45888044Cl";

AsyncWebServer server(80);

void setup(){
  Serial.begin(115200);
  WiFi.begin(ssid,password);
  while(WiFi.status()!=WL_CONNECTED){delay(500);}
  server.on("/", [](auto* req){req->send(200,"text/plain","OTA OK");});
  server.begin();
}
void loop(){}
