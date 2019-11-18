n=0
sum=0
fi=0
i=0
while (i<1)
      a = 0
      b = 1
      j=2
      if n < 0
          puts "Incorrect input"
      elif n == 0
          puts "#{n} th term is #{a}"
      elif n == 1
          puts "#{n} th term is #{b}"
      else
          for j in 2..n
              c = a + b
              a = b
              b = c

        end
        puts "#{n} th term is #{b}"
      end
      if( b.to_s.size==1000)
        puts "#{n} th term is #{b} have size 1000"
        i=2
      end
      n+=1
  end
