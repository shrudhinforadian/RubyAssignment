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
start=1
n=1
size=500
while fact(start)<size
  puts "#{start}fact count=#{fact(start)}"
  n+=1
  start+= n
end
puts start
