def printnum(a,len)
 i=0
 for i in 0...len
   puts @switches[a[i]]
 end
 i+=1
end
def printcnum(a,len)
 i=0
 for i in 0...len
   puts "#{a[i]} : #{@switches[a[i]]}"
 end
end
def printonum(a,len)
 i=0
 for i in 0...len
   if a[i] != " "
     puts @switches[a[i]]
  end
 end
end
def printocnum(a,len)
 i=0
 for i in 0...len
   if a[i] != " "
     puts "#{a[i]} : #{@switches[a[i]]}"
  end
 end
end
@switches={"a"=>2,
  "b"=>22,
  "c"=>222,
  "d"=>3,
  "e"=>33,
  "f"=>333,
  "g"=>4,
  "h"=>44,
  "i"=>444,
  "j"=>5,
  "k"=>55,
  "l"=>555,
  "m"=>6,
  "n"=>66,
  "o"=>666,
  "p"=>7,
  "q"=>77,
  "r"=>777,
  "s"=>7777,
  "t"=>8,
  "u"=>88,
  "v"=>888,
  "w"=>9,
  "x"=>99,
  "y"=>999,
  "z"=>9999,
  " "=>0
}
t=" "
text=" "
message=ARGV
s= message[0]
if message[2].nil?
  text=message[1]
else
  t=message[1]
  text=message[2]
end
a=s.split("")
   if text=="-p1"
       if t =="-s0"
       flag=3
     else
       flag=1
       end
  elsif text=="-s0"
      if t =="-p1"
        flag=3
      else
        flag=2
      end
  else
    flag=0
  end
 len=a.size
if flag==0
 printnum(a,len)
elsif flag==1
  printcnum(a,len)
elsif flag==2
  printonum(a,len)
elsif flag==3
  printocnum(a,len)
end
