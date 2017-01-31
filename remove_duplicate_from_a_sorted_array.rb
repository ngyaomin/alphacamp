
=begin
Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

Do not allocate extra space for another array, you must do this in place with constant memory.

For example,
Given input array nums = [1,1,2],

Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.
=end

def remove_duplicates(nums)
   
  
    puts nums.uniq
    puts "the array length is #{nums.uniq.length}"
  end


remove_duplicates([1,1,2])
remove_duplicates([5,1,3,5,5])