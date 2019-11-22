
class Integer
  def factors() (1..self).select { |n| (self % n).zero? } end
end

start=1
e= 10**7
i=1
count=0
for i in start..e
  a=i.factors.size
  b=(i+1).factors.size
  if a==b
    puts i
    count+=1
end
end
