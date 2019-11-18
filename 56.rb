a=1
b=1
big=0
for a in 1...100
  for b in 1...100
    sum=a**b
    s=sum.to_s.split("")
    a=0
    for t in s
      a+=t.to_i
    end
    puts a
    if big<a

      big=a
    end
  end
end
puts big
