
#actually this question is very simple to solve it requires no thinking but making it into ruby code is hard
#bascially since the majorirty number must appear more than n/2 times and is alway presense, then the majority element must cover the half way life after the sort
#examples
#1,1,2,2,2,2,2,3,3: 2 is in the middle
#0,0,0,0,1,2,3

def majority(array)
 
  array.sort!
 puts array[array.length/2]
 
      end

#majority([2, 3, 3, 5, 6, 7])
#majority([2, 3, 3, 3, 5, 6])
majority([2,3,5,3,5,5,1,6,7,8,5,5,5,6,5,5,5])



