

def anagram(s, t)


  if s.chars.sort == t.chars.sort #.chars does is it convert the strings into charaters so that it can be compared
    print true
  else
    print false
  end
end


anagram('rat', 'tar') 
anagram('pat', 'tap')
anagram('bull', 'pull')