a=2
b=2
sum=[]
i=0
for a in 2..100
  for b in 2..100
    sum[i]=a**b
    i=i+1
  end
end
sum=sum.uniq
puts sum.size
