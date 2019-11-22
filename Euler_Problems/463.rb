

def rec(n)
  if n == 1
    1
  elsif n == 3
    3
  elsif n.even?
    rec(n / 2)
  elsif n  % 4 == 1
    2 * rec(n/2 + 1) - rec(n/4)
  elsif n % 4 == 3
    3 * rec(n/2 + 1) - 2 * rec(n/4)
  else
    0
  end
end
start = 1
sum = 0
(start..100).each do |i|
  sum += rec(i)
end
puts sum
