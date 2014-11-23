#!/usr/bin/ruby

num = ARGV[0]
t = File.read("lines.txt")
lines = Array.new
t.each_line do |l|
  lines.push(l)
end

while 1
  msg = lines.sample
  `osascript sendMessage.applescript #{num} "#{msg}"`
  sleep 0.7
end
