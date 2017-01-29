def max_profit(prices)
  profit = 0
  buy_price = prices[0]
  reference_price = 0 
  stock_counter = 1
  for i in prices do
    #for selling , need to prevent from selling if there is no stock
    if i > buy_price && stock_counter == 1
      profit = profit + i - buy_price
      
      reference_price = i
      stock_counter = 0
      
      buy_price = 0 
      
      #for buying
    elsif  i < reference_price  && stock_counter == 0
        buy_price = i
       
        
        
        stock_counter = 1
   
       
        reference_price = i
        
        #puts reference_price
        
        
        
        
        
      
    end
  
    
  end
  puts profit
end

max_profit ([20, 25, 59, 23, 56, 11, 33]) #60
max_profit ([21, 11, 33, 22, 56, 21, 23]) #48
max_profit ([21, 11, 33, 22, 56, 22, 23]) #47


