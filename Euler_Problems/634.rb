limit=2*10**4
start=2
count=0
ps=0
for a in start..limit
  for b in start..limit
    sum=a**2 + b**3
      if sum<limit
        puts "#{a} and #{b}"
        count+=1
      else

      end

    end
  end
puts count
