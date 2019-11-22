
def prime(num)
  i=2
  for i in 2..num/2
    if num%i==0
      return 1
    end
  end
  return 0
end
limit=100000
start =1000
sum=0
count=2
while start<limit
  cons=0
  for count in 2..start/2
      if start%count==0
      fact=count
        if prime(fact)==0
          sum+=prime(fact)
          cons+=1
        end
    end
    count+=1
  end
      if sum==start
        puts sum,cons
    end
    start+=1

end
