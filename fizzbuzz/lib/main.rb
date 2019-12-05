require_relative './fizzbuzz'
require_relative './error_handle'
class FizzBuzz

  def self.fizzbuzz(*args)
    start = args[0]
    stop = args[1]
    check = ErrorHandle.error_check(*args)
    if check
      (start..stop).each do |i|
        puts " #{FizzBuzzCheck.check_fizzbuzz(i)}" unless FizzBuzzCheck.check_fizzbuzz(i).nil?
      end
    end
  end
end
FizzBuzz.fizzbuzz(2,5)
