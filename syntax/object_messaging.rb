def the_widget_machine

  loop do
    yield "widget_#{rand(10)}"
  end
end

the_widget_machine do |widget|

  the_widget_observers.each do |observer|

    receiver = "process_#{widget}"

    if solicit
      observer.send(receiver, widget)
    else
      observer.send(receiver, widget) if observer.respond_to? receiver
    end
  end
end
