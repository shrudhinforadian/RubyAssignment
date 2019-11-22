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
count=1
num=2
while ( count <= 10001)
  if prime(num)==0
    puts num
    puts count
    count=count+1
  end
  num=num+1
end
puts num
