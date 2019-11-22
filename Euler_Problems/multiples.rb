num=1
sum=0
for num in 3...1000
  if num%3==0 || num%5==0
    sum+=num
    puts num
  end
end
puts sum
