def prime(num)
  i=2
  for i in 2..num/2
    if num%i==0
      return 1
    end
  end
  return 0
end

en=50000000
n=2
count=0
for n in 2..en
  sum=(2*(n**2))-1
  if prime(sum)==0
    count+=1
  end
end
puts sum
