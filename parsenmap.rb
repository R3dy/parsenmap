#!/usr/bin/env ruby
#############################
#Author = Royce Davis
#Last edited February 2, 2011
#############################
require 'rubygems'
require 'nmap/parser'

unless ARGV.length > 0
  puts "Generates a .txt file containing the open pots summary and the .nmap information\r\n"
  puts "USAGE:\t./parsenmap <nmap xml file>\r\n\n"
  exit!
end

ports = Array.new
portstring = String.new
parser = Nmap::Parser.parsefile("#{ARGV[0]}")
parser.hosts("up") do |host|
  [:tcp, :udp].each do |type|
    host.getports(type, "open") do |port|
      string = port.state.to_s
      unless string.include? "filtered" 
        srv = port.service
  ports << port.num unless ports.include? port.num
        puts "#{host.addr}\t#{port.num}\t#{srv.name}\t#{srv.product}\t#{srv.version}\t#{srv.extrainfo}"
      end
    end
  end
end

ports.each { |port| portstring << port.to_s + "," }
puts "sudo nmap -sS -p #{portstring.chop} -sV -A -vv -oA enumeration -iL ../ranges.txt"
