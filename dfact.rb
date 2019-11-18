start=1
d=1
for start in 1..100
  d*=start
  start+=1
end
a=[]
a=d.to_s.split("")
s=a.size
i=0
sum=0
puts s
for i in 0..s

  sum+=a[i].to_i
  i+=1
end
puts sum
