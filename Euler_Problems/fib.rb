def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fib(n - 1) + fib(n - 2)
  end
end
n = 0
sum = 0
fi = 0
(0..400_000).each do |n|
  fi = fib(n)
  if fi.even?
    puts sum
    sum += fi
  end
  n += 1
end
puts sum
