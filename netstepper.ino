#include <Stepper.h>
#define STEPS  100

int incomingByte = 0;   // for incoming serial data
Stepper small_stepper(STEPS, 8, 10, 9, 11);

void setup() {
        Serial.begin(9600);     // opens serial port, sets data rate to 9600 bps
}

void loop() {

        // send data only when you receive data:
        if (Serial.available() > 0) {
                // read the incoming byte:
                // incomingByte = Serial.read();

                // say what you got:
                Serial.print("STEPS TO MOVE: ");
                incomingByte = Serial.parseInt();
                Serial.println(incomingByte, DEC);
                small_stepper.setSpeed(200);
                small_stepper.step(incomingByte);
        }
}