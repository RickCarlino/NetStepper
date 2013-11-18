require 'sinatra'
require 'serialport'

begin
  #params for serial port

  puts 'Please enter the path to your arduino device over USB. Example: /dev/tty.usbmodemfd121'
  puts "We found the following devices: #{`ls /dev/tty.usbmodem*`}"
  port_str = gets.chomp
  baud_rate = 9600
  data_bits = 8
  stop_bits = 1
  parity = SerialPort::NONE

  sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

  puts 'OK! Everything is ready. Try visiting localhost:4567/forward/123 or /backward/456'
rescue
  puts 'whoops. Something went wrong. Did you input the correct serial device?'
end

get '/forward/:steps' do
  puts 'Turning the pin on now...'
  sp.puts params[:steps].to_i
end

get '/backward/:steps' do
  puts 'Moving back now...'
  # Make the number negative to move the other way.
  sp.puts params[:steps].to_i * -1
end