sum=0
i=1
sumsquare=0
for i in 1..100
  sum+=i
  sumsquare+=i**2
end
sum=sum**2
difference=sum-sumsquare
puts difference
