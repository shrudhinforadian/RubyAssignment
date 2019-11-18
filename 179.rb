

def f(n)
  i=1
  count=0
  for i in 1..n
    if n%i==0
       count+=1
    end
  end
  return count
end

start=1
e= 10**7
i=1
count=0
for i in start..e
  a=f(i)
  b=f(i+1)
  if a==b
    puts i
    count+=1
end
end
