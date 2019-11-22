limit=10**32
en=10**32/10000019
div=10000019
count=0
for i in 1..en
  a=div*i
  b=a.to_s.reverse.to_i
  if a==b
      puts "#{a} is divisible"
      count+=1
  end
end
puts count
