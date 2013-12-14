NetStepper
==========

Controlling a stepper motor via HTTP

Up and Running
--------------

 1. This project uses a 4 wire, 5v stepper. It makes the assumption that it is connected to ports 8, 10, 9, 11. It also assumes you are using the Arduino Uno default serial-over-USB configuration.

 2. Upload netstepper.ino onto your device.

 3. Run `bundle install` and then `ruby main.rb`

 4. Visit http://localhost:4567/forward/200 or http://localhost:4567/backward/200 . It should have moved.

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/rickcarlino/netstepper/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

