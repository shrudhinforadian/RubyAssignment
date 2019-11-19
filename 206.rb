a=123456789
n=0

s=a.to_s.split("")
for n in 0..9
  ns=0
for i  in s

  ns+=i.to_i
  ns*=10
  ns+=n
  ns*=10
end
puts ns
puts Math.sqrt(ns)
end
