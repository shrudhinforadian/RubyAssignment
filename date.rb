# frozen_string_literal: true

def in_words(data)
  str = ''
  @numbers_to_name.each do |num, name|
    if data == 0
      return str
    elsif data.to_s.length == 1 && data / num > 0
      return str + name.to_s
    elsif data < 100 && data / num > 0
      return str + name.to_s if data % num == 0

      return str + "#{name} " + in_words(data % num)
    elsif data / num > 0
      return str + in_words(data / num) + " #{name} " + in_words(data % num)
    end
  end
end
# require 'numbers_and_words'
# @date = { '1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six', '7' => 'seven',
#           '8' => 'eight', '9' => 'nine', '10' => 'Ten', '11' => 'Eleven', '12' => 'Twelve', '13' => 'Thirteen', '14' => 'Fourteen',
#           '15' => 'Fifteen', '16' => 'sixteen', '17' => 'seventeen', '18' => 'Eighteen', '19' => 'Nineteen', '20' => 'Twenty', '30' => 'Thirty' }

months = { '1' => 'January', '2' => 'February', '3' => 'March', '4' => 'April', '5' => 'May', '6' => 'June',
           '7' => 'July', '8' => 'August', '9' => 'September', '10' => 'October', '11' => 'November', '12' => 'December' }
           
@numbers_to_name = { 1000 => 'thousand', 100 => 'hundred', 90 => 'ninety', 80 => 'eighty', 70 => 'seventy', 60 => 'sixty', 50 => 'fifty',
                     40 => 'forty', 30 => 'thirty', 20 => 'twenty', 19 => 'nineteen', 18 => 'eighteen', 17 => 'seventeen', 16 => 'sixteen', 15 => 'fifteen',
                     14 => 'fourteen', 13 => 'thirteen', 12 => 'twelve', 11 => 'eleven', 10 => 'ten', 9 => 'nine', 8 => 'eight', 7 => 'seven',
                     6 => 'six', 5 => 'five', 4 => 'four', 3 => 'three', 2 => 'two', 1 => 'one' }

date = ARGV
date_string = date.to_s.split('-')
date = date_string[0].reverse.to_i.to_s.reverse.to_i
month = date_string[1].to_i
year = date_string[2].to_i

# puts "#{date.to_words} - #{@months[month.to_s]} - #{in_words(year)}"

if month <= 12 && month != 0 && year.to_s.length == 4
  if (((month.odd? || month == 8) && date <= 31) || ((month == 2 && date <= 28) || (year % 4 == 0 && date <= 29)) || (month.even? && (date <= 31) && month != 2)) && month != 0

    puts "#{in_words(date)} - #{months[month.to_s]} - #{in_words(year)}"
  else
    puts 'invalid date'
end
else
  puts 'invalid date'
end
