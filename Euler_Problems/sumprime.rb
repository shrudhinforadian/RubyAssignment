def prime(n)
  i=2
  for i in 2..n/2
    if n%i == 0
      return 1
    end
    i+=1
  end
  return 0
end
limit=2000000
i=2
sum=0
for i in 2..limit
  if prime(i)==0
    puts i
    sum+=i
  end
  i+=1
end
puts sum
