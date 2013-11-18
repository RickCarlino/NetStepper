NetStepper
==========

Controlling a stepper motor via HTTP

Up and Running
--------------

 1. This project uses a 4 wire, 5v stepper. It makes the assumption that it is connected to ports 8, 10, 9, 11. It also assumes you are using the Arduino Uno default serial-over-USB configuration.

 2. Send a positive or negative number down the serial line.