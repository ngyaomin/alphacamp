#Given an array of integers, every element appears three times except for one, which appears exactly once. Find that single one.

#^	Binary XOR Operator copies the bit if it is set in one operand but not both.

def single_number(nums)
  number = 0
  nums.each{ |nums| number = number ^ nums} #dont know why it dont work 
  #next if nums(i) == nums(i-1)
  
  number    
end


puts single_number ([2,2,5,3,3]) #pass
puts single_number ([5,9, 5]) #pass
puts single_number ([5,5,9, 5, 5]) # pass
puts single_number ([6,5,5,5]) #fails
puts single_number ([5,5,5,6]) #fails
puts single_number ([2,2,2,6,11,11,11]) #fails

# it wont work if the number repeats in concequtive order
