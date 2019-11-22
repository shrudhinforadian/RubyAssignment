require 'prime'

en=50000000
n=2
count=0
for n in 2..en
  sum=(2*(n**2))-1
  if Prime.prime?(sum)
    puts sum
    count+=1
  end
end
puts count
