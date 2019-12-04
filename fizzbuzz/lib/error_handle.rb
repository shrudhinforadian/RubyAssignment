
# require 'FizzBuzz'
class ErrorHandle
  class<<self
    def error_check(*args)
      check_no_of_arg(*args) && check_is_num(*args) && compare_num(*args) && check_defined(*args)
    end

    def check_no_of_arg(*args)
      raise 'Invalid no of Arguments' unless args.length == 2

      true
    end

    def check_is_num(*args)
      unless check_int(args[0]) && check_int(args[1])
        raise 'Enter Number Values only'
      end

      true
    end

    def compare_num(*args)
      raise 'Enter a Valid Limit' unless args[0] < args[1]

      true
    end

    def check_defined(*_args)
      start = defined?(:args[0])
      stop = defined?(:args[1])
      puts raise 'Invalid Data' unless !start.nil? && !stop.nil?
      true
    end

    def check_int(num)
      num.is_a?(Integer)
    end
  end
end
