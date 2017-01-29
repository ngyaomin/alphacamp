=begin
Say you have an array for which the ith element is the price of a given stock on day i.
Design an algorithm to find the maximum profit. You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times). However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).

21, 15, 23, 56, 69, 92, 23, 56, 21, 27, 23
You see there is no perfect ans to such solutions if there is one then all blackbox strategies would not fail. The reasons is algoritums make assumpstions. Here for example you make the crital assumption that all my selling and buying does not affect share prices. For example if I sell at 15 it would not affect the next share price of 23. 

Ok now by quick thinking and how I know there are many smart people in this world
This is the first solution that most people would come out with.
Find lowest and highest : 
First sort : 15, 21, 23, 56, 69, 92, 23, 56
Then take highest and lower find profit, eliminate then take next h and l and then cont. I know many ppl think like this can. Of cause for sake of programming and coding learning this is suffiecent liao 

now of cause we can code it this way and pseduo code typically look something like this

set profit = 0
loop

sort array

profit += Max - Min
remove the max and min form the array

end loop 
=end


def max_profit(prices)

  profit = 0
  

  loop do
    prices.sort
   
    profit = profit + prices.max - prices.min
    
    prices.delete(prices.max)
    prices.delete(prices.min)
    
    if prices.empty? == true
      break
    end
  end
 puts profit
  
end



puts max_profit ([21, 25, 59, 23, 56, 11, 33])

# thing is it wont work if there is a repeated number, this cuase the loop to exit and break once that number is encounter.
