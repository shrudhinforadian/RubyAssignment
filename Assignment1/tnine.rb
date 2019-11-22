def printnumbers(chararray, len)
  i = 0
  (0...len).each do |i|
    puts @switches[chararray[i]]
  end
  i += 1
end

def print_char_number(chararray, len)
  i = 0
  (0...len).each do |i|
    puts "#{chararray[i]} : #{@switches[chararray[i]]}"
  end
end

def print_null_number(chararray, len)
  i = 0
  (0...len).each do |i|
    puts @switches[chararray[i]] if chararray[i] != ' '
  end
end

def print_null_char_number(chararray, len)
  i = 0
  (0...len).each do |i|
    puts "#{chararray[i]} : #{@switches[chararray[i]]}" if chararray[i] != ' '
  end
end
@switches = { 'a' => 2, 'b' => 22, 'c' => 222, 'd' => 3,
              'e' => 33, 'f' => 333, 'g' => 4, 'h' => 44, 'i' => 444, 'j' => 5, 'k' => 55, 'l' => 555, 'm' => 6, 'n' => 66, 'o' => 666, 'p' => 7,
              'q' => 77, 'r' => 777, 's' => 7777, 't' => 8, 'u' => 88, 'v' => 888, 'w' => 9, 'x' => 99, 'y' => 999, 'z' => 9999, ' ' => 0 }
option2 = ' '
option = ' '
message = ARGV
string = message[0]
if message[2].nil?
  option = message[1]
else
  option2 = message[1]
  option = message[2]
end
chararray = string.split('')
len = chararray.size
if option == '-p1'
  if option2 == '-s0'
    print_null_char_number(chararray, len)
  else
    print_char_number(chararray, len)
    end
elsif option == '-s0'
  if option2 == '-p1'
    print_null_char_number(chararray, len)
  else
    print_null_number(chararray, len)
    end
else
  printnumbers(chararray, len)
  end
