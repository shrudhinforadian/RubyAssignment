start=614656
count=10
while count<31
  start+=1
  s=start.to_s.split("")
  len=s.size
  sum=0
  for t in s
    sum+=t.to_i
  end
  p=1
  for p in 1..len
    if start==sum**p
      puts "#{start} hi #{sum} hlo #{p}"
      count+=1
    end
  end
end
