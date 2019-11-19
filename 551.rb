start=1
count=0
sum=0
en=10**15
for count in 0..en-1
  tsum=start.to_s.split("")
  tvar=0
  for t in tsum
    tvar+=t.to_i
  end
  sum+=tvar
  start=sum
end
puts sum
