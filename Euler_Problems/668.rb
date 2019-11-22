# frozen_string_literal: true

limit = 100
def prime(n)
  i = 2
  (2..n / 2).each do |i|
    return 1 if n % i == 0
  end
  0
end
start = 2
smooth = 1
i = 2
ns = 0
(start..limit).each do |i|
  j = 2
  (2..i / 2).each do |j|
    next unless i % j == 0

    if prime(j) == 0
      ns = 1 if j > Math.sqrt(i)
    end
  end
  if ns == 0
    smooth += 1
    puts i
  end
  ns=0
end 
puts smooth
