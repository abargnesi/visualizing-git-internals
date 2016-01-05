# example 1
def fork_in_the_road(person)
  if brave(person)
    :left
  else
    :right
  end
end

# example 2
send(def add(a,b); a.+(b); end, 5, 10)
