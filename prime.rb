num=600851475143
fact=0
count=2
for count in 1..num/2
  if num%count==0
    fact=count
  end
end
puts fact
