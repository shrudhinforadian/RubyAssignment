a=[1,2,3,4,5,6]
b=a.to_s
c=a
a.delete(2)
p a.to_s==b
p b
p a.to_s
p c
