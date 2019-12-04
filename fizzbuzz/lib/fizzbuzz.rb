
begin
  require './error_handle'
  class FizzBuzz
    class << self
      def check_fizzbuzz(n)
        if n % 15 == 0
          "#{n} FizzBuzz"
        elsif n % 3 == 0
          "#{n} Fizz"
        elsif n % 5 == 0
          "#{n} Buzz"
        end
      end

      def fizzbuzz(*args)
        start = args[0]
        stop = args[1]
        check = ErrorHandle.error_check(*args)
        
        if check
          (start..stop).each do |i|
            puts " #{check_fizzbuzz(i)}" unless check_fizzbuzz(i).nil?
          end
        else
          puts 'Invalid Data'
        end
        end
      end
    end
rescue NameError
  raise 'Undefined Variable'
end
