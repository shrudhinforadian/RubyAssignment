  # require_relative './error_handle'
  class FizzBuzzCheck

      def self.check_fizzbuzz(n)
        if n % 15 == 0
          "#{n} FizzBuzz"
        elsif n % 3 == 0
          "#{n} Fizz"
        elsif n % 5 == 0
          "#{n} Buzz"
        end
      end
end
