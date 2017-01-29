=begin

Write a program to check whether a given number is an ugly number.

Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.

Note that 1 is typically treated as an ugly number.

 prime factors of a positive integer are the prime numbers that divide that integer exactly.

so 4 > 4/2/2

6 =2 x 3 ugly
9 = 3 x 3 ugly

8 = 2 x 2 x 2 ugly

so to solve this question we must find that if the number is  divided by 2,3,5 that its remainder must be zero. and only by these 3 number other number cannot


if num% 2 = 0
num = num/2

if num% 3 = 0
num = num/3

if num% 5 = 0 
num = num/5

=end

=begin
def is_ugly(num)
  
  
  if num%5 == 0 
  num = num/5
 
  

  

 if  num%3 == 0
  num = num/3
  

  
if num%2 == 0
  num = num/2
  
 
   
    
  
end

    if num == 1
      puts "is ugly"
    else
      puts "not ugly"
    end

end
=end

 

  
  #end
  
  #end



  #end
  
  def is_ugly(num)
  
  while (num % 5 == 0)
      num /= 5
    end
   while (num % 3 == 0)
      num /= 3
    end
   while (num % 2 == 0)
      num /= 2
    end
    if num == 1
      puts "is ugly"
    else
      puts "not ugly"
    end
    
  end

is_ugly(6)
is_ugly(8)
is_ugly(14)
is_ugly(300)