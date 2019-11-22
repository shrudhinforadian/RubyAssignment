class Integer
  def factors() (1..self).select { |n| (self % n).zero? } end
end
start=1
n=1
size=500
while start.factors.size<size
  puts "#{start}fact count=#{start.factors.size}"
  n+=1
  start+= n
end
puts start
#answer=76576500
