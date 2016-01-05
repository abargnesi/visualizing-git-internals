def greet person
  print "Hello my dear #{person.to_s}!"
end

greet Person.new('David')
