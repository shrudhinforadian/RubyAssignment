
module FizzBuzz
  def self.check_fizzbuzz(n)
    if n % 15 == 0
      "#{n} FizzBuzz"
    elsif n % 3 == 0
      "#{n} Fizz"
    elsif n % 5 == 0
      "#{n} Buzz"
    end
  end

  def self.fizzbuzz(*args)
    start = args[0]
    stop = args[1]
    check = !start.nil? && !stop.nil? && (start < stop)
    if check

      (start..stop).each do |i|
        puts " #{check_fizzbuzz(i)}" unless check_fizzbuzz(i).nil?
      end
    else
      puts 'Invalid Data'
    end
  end
end
