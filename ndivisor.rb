def fact(n)
  i=1
  count=0
  for i in 1 ..n
    if n%i==0
      count+=1
    end
    i+=1
  end
  return count
end
start=500**2
size=500
while fact(start)<size
  puts "fact count=#{fact(start)}"
  start+=1
end
puts start
