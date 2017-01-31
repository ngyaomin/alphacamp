=begin
Given an array of integers, find if the array contains any duplicates.
 Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
=end


  def is_duplicate(array)

    
    if array.uniq.length == array.length #actually can also do without the .length
      return "no extras"
     else
      return "have extras"
    end
  end
    

   puts is_duplicate([1,2,3])
   puts is_duplicate([3,3,1])
   puts is_duplicate([5,5,6,9,11])


   
   
