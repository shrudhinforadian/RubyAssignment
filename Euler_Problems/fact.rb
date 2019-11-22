def prime(num)
  i=2
  for i in 2..num/2
    if num%i==0
      return 1
    end
  end
  return 0
end


num=600851475143
fact=0
count=2
for count in 2..num/70
  if num%count==0
    fact=count
    if prime(fact)==0
      puts fact
    end
  end
  count+=1
end
puts fact
