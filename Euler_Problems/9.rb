a=1
b=1
for a in 1..1000
  for b in 1..1000
    c= a**2 + b**2
    if(a+b+Math.sqrt(c)==1000)
      puts a
      puts b
      puts Math.sqrt(c)
      puts a*b*Math.sqrt(c)
    end
  end

end
