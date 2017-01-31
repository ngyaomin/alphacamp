=begin

Given a sorted array and a target value, return the index if the target is found. If not, 
return the index where it would be if it were inserted in order.

let n = user input n
Loop
If n = i 
 return index
Else if n <> i
insert n into array
sort array
find index
end loop
=end


def search_insert(nums, n)


  
for i in nums
  if i != n 
  
    return nums.push(n).sort.index(n)
    #break

  else
    
    return nums.index(n)
    #break
    
  
  end
  
end

end


print search_insert([1,3,5,6], 5)#, 5 → 2
search_insert([1,3,5,6], 2)#, 2 → 1
search_insert([1,3,5,6], 7)#, 4
search_insert([1,3,5,6], 2)#, 1
search_insert([1,3,5,6], 3)# 1
search_insert([-1,3,5,6],2)
search_insert([1,2,6], 4)
search_insert([1,2,6], 0)
print search_insert([2,5,6,-1,3], 4)
#[1,3,5,6]#, 7 → 4
#®[1,3,5,6]#, 0 → 0

